--[[Winter Gloves created by Brannon1964802.]]--

Player=game:GetService("Players").LocalPlayer
Character=Player.Character 
PlayerGui=Player.PlayerGui
Backpack=Player.Backpack 
Torso=Character.Torso 
Head=Character.Head 
Humanoid=Character.Humanoid
--m=Instance.new('Model',Character)
LeftArm=Character["Left Arm"] 
LeftLeg=Character["Left Leg"] 
RightArm=Character["Right Arm"] 
RightLeg=Character["Right Leg"] 
LS=Torso["Left Shoulder"] 
LH=Torso["Left Hip"] 
RS=Torso["Right Shoulder"] 
RH=Torso["Right Hip"] 
Face = Head.face
Neck=Torso.Neck
it=Instance.new
attacktype=1
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
cloaked=false
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
LHC0=cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
LHC1=cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
RHC0=cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
RHC1=cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
RootPart=Character.HumanoidRootPart
RootJoint=RootPart.RootJoint
RootCF=euler(-1.57,0,3.14)
attack = false 
attackdebounce = false 
deb=false
equipped=false
hand=false
MMouse=nil
combo=0
mana=0
trispeed=.2
attackmode='none'
local idle=0
local Anim="Idle"
local gun=false
local shoot=false
player=nil 
mana=0

local Player = game.Players.localPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local mouse = Player:GetMouse()
--local m = Instance.new('Model', Character)
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local cam = game.Workspace.CurrentCamera
local RootPart = Character.HumanoidRootPart
--cam.CameraSubject = Head
--Humanoid.CameraOffset = Vector3.new(0, 0, 0)
local equipped = false
local attack = false
local Anim = 'Idle'
local idle = 0
local sprint = false
local battlestance = false
local attacktype = 1
local state = 'none'
local torsovelocity = (RootPart.Velocity * Vector3.new(1, 0, 1)).magnitude 
local velocity = RootPart.Velocity.y
local sine = 0
local change = 1
local on = false
local grabbed = false
local skill1 = false
local skill2 = false
local skill3 = false
local skill4 = false
local cooldown1 = 0
local cooldown2 = 0
local cooldown3 = 0
local cooldown4 = 0
local co1 = 0--how long it will take for skill to cooldown
local co2 = 0
local co3 = 0
local co4 = 0
local inputserv = game:GetService('UserInputService')
local typing = false
local crit = false
local critchance = 2--critical chance percentage
local critdamageaddmin = 3--minimum amount of critical damage being added to regular damage
local critdamageaddmax = 7--maximum amount
local maxstamina = 100--max amount of stamina
local stamina = 0--stamina you start out with
local skill1stam = 0--how much stamina is needed for a skill
local skill2stam = 0
local skill3stam = 0
local skill4stam = 0
local recovermana = 3--how much mana per second
local mindamage = 5--self explanatory
local maxdamage = 10--self explanatory
local cf = CFrame.new-- make things easier :)
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)--color scheme for skills lol

local defensevalue = 1
local speedvalue = 1
local damagevalue = 1
local cf = CFrame.new-- make things easier :)
local mr = math.rad
local angles = CFrame.Angles
local ud = UDim2.new
local c3 = Color3.new
local skillcolorscheme = c3(1, 1, 1)--color scheme for skills lol

local scrn = Instance.new('ScreenGui', Player.PlayerGui)
function makeframe(par, trans, pos, size, color)
	local frame = Instance.new('Frame', par)
	frame.BackgroundTransparency = trans
	frame.BorderSizePixel = 0
	frame.Position = pos
	frame.Size = size
	frame.BackgroundColor3 = color
	return frame
end
function makelabel(par, text)
	local label = Instance.new('TextLabel', par)
	label.BackgroundTransparency = 1
	label.Size = ud(1, 0, 1, 0)
	label.Position = ud(0, 0, 0, 0)
	label.TextColor3 = c3(255, 255, 255)
	label.TextStrokeTransparency = 0
	label.FontSize = Enum.FontSize.Size32
	label.Font = Enum.Font.SourceSansBold
	label.BorderSizePixel = 0
	label.TextScaled = true
	label.Text = text
end

local stats=Instance.new('Folder',Character)
stats.Name='Stats'
local block=Instance.new('BoolValue',stats)
block.Name='Block'
block.Value=false
local stun=Instance.new('BoolValue',stats)
stun.Name='Stun'
stun.Value=false
local defense=Instance.new('NumberValue',stats)
defense.Name='Defence'
defense.Value=defensevalue
local speed=Instance.new('NumberValue',stats)
speed.Name='Speed'
speed.Value=speedvalue
local damagea=Instance.new('NumberValue',stats)
damagea.Name='Damage'
damagea.Value=damagevalue

framesk1 = makeframe(scrn, 0.5, ud(.13, 0, .56, 0), ud(.08, 0, .06, 0), c3(1,1,0.5))
bar1 = makeframe(framesk1, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1,1,0.5))
ammolabel = Instance.new("TextLabel",framesk1)
ammolabel.BackgroundTransparency = 1
ammolabel.Size = ud(1, 0, 1, 0)
ammolabel.Position = ud(0, 0, 0, 0)
ammolabel.TextColor3 = c3(255, 255, 255)
ammolabel.TextStrokeTransparency = 0
ammolabel.FontSize = Enum.FontSize.Size8
ammolabel.Font = Enum.Font.SourceSans
ammolabel.BorderSizePixel = 0
ammolabel.TextScaled = true
ammolabel.Text ='Speed ['..speed.Value..']'
framesk2 = makeframe(scrn, 0.5, ud(.13, 0, .63, 0), ud(.08, 0, .06, 0), c3(1,0.5,1))
bar2 = makeframe(framesk2, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.5,0.25,0.25))
ammolabel2 = Instance.new("TextLabel",framesk2)
ammolabel2.BackgroundTransparency = 1
ammolabel2.Size = ud(1, 0, 1, 0)
ammolabel2.Position = ud(0, 0, 0, 0)
ammolabel2.TextColor3 = c3(255, 255, 255)
ammolabel2.TextStrokeTransparency = 0
ammolabel2.FontSize = Enum.FontSize.Size8
ammolabel2.Font = Enum.Font.SourceSans
ammolabel2.BorderSizePixel = 0
ammolabel2.TextScaled = true
ammolabel2.Text ='Damage ['..damagea.Value..']'
framesk3 = makeframe(scrn, 0.5, ud(.13, 0, .70, 0), ud(.08, 0, .06, 0), c3(1,0.5,1))
bar3 = makeframe(framesk3, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(0.25,0.25,0.5))
ammolabel3 = Instance.new("TextLabel",framesk3)
ammolabel3.BackgroundTransparency = 1
ammolabel3.Size = ud(1, 0, 1, 0)
ammolabel3.Position = ud(0, 0, 0, 0)
ammolabel3.TextColor3 = c3(255, 255, 255)
ammolabel3.TextStrokeTransparency = 0
ammolabel3.FontSize = Enum.FontSize.Size8
ammolabel3.Font = Enum.Font.SourceSans
ammolabel3.BorderSizePixel = 0
ammolabel3.TextScaled = true
ammolabel3.Text ='Defense ['..defense.Value..']'
framesk4 = makeframe(scrn, 0.5, ud(.13, 0, .42, 0), ud(.08, 0, .06, 0), c3(1,1,1))
bar4 = makeframe(framesk4, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1,1,1))
ammolabel4 = Instance.new("TextLabel",framesk4)
ammolabel4.BackgroundTransparency = 1
ammolabel4.Size = ud(1, 0, 1, 0)
ammolabel4.Position = ud(0, 0, 0, 0)
ammolabel4.TextColor3 = c3(255, 255, 255)
ammolabel4.TextStrokeTransparency = 0
ammolabel4.FontSize = Enum.FontSize.Size8
ammolabel4.Font = Enum.Font.SourceSans
ammolabel4.BorderSizePixel = 0
ammolabel4.TextScaled = true
ammolabel4.Text ='Press F to equip your weapon.'
framesk5 = makeframe(scrn, 0.5, ud(.13, 0, .49, 0), ud(.08, 0, .06, 0), c3(1,1,1))
bar5 = makeframe(framesk5, 0.5, ud(0, 0, 0, 0), ud(1, 0, 1, 0), c3(1,1,1))
ammolabel4 = Instance.new("TextLabel",framesk5)
ammolabel4.BackgroundTransparency = 1
ammolabel4.Size = ud(1, 0, 1, 0)
ammolabel4.Position = ud(0, 0, 0, 0)
ammolabel4.TextColor3 = c3(255, 255, 255)
ammolabel4.TextStrokeTransparency = 0
ammolabel4.FontSize = Enum.FontSize.Size8
ammolabel4.Font = Enum.Font.SourceSans
ammolabel4.BorderSizePixel = 0
ammolabel4.TextScaled = true
ammolabel4.Text ='The keys for the abilities are: E, Z, X, C, and V.'

animate = Character:findFirstChild("Animate")
animate.Disabled = false

CustomColor = BrickColor.new("Institutional white")

Colorpart1 = Torso.BrickColor.r
Colorpart2 = Torso.BrickColor.g
Colorpart3 = Torso.BrickColor.b

local TorsoLight=Instance.new("PointLight",Torso)
TorsoLight.Brightness=5
TorsoLight.Range=7.5
TorsoLight.Color=Color3.new(Colorpart1,Colorpart2,Colorpart3)

mouse=Player:GetMouse()
--save shoulders 
--RSH, LSH=nil, nil 
--welds 
--RW, LW=Instance.new("Weld"), Instance.new("Weld") 
--RW.Name="Right Shoulder" LW.Name="Left Shoulder"
RW=Torso["Right Shoulder"]
LW=Torso["Left Shoulder"]
LH=Torso["Left Hip"]
RH=Torso["Right Hip"]
TorsoColor=Torso.BrickColor
function NoOutline(Part)
Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
--[[player=Player 
ch=Character
RSH=ch.Torso["Right Shoulder"] 
LSH=ch.Torso["Left Shoulder"] 
-- 
RSH.Parent=player.Character.Torso 
LSH.Parent=player.Character.Torso 
-- 
RW.Name="Right Shoulder"
RW.Part0=ch.Torso 
RW.C0=cf(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1=cf(0, 0.5, 0) 
RW.Part1=ch["Right Arm"] 
RW.Parent=nil 
-- 
LW.Name="Left Shoulder"
LW.Part0=ch.Torso 
LW.C0=cf(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1=cf(0, 0.5, 0) 
LW.Part1=ch["Left Arm"] 
LW.Parent=nil]]--

	local function weldBetween(a, b)
	    local weldd = Instance.new("ManualWeld")
	    weldd.Part0 = a
	    weldd.Part1 = b
	    weldd.C0 = CFrame.new()
	    weldd.C1 = b.CFrame:inverse() * a.CFrame
	    weldd.Parent = a
	    return weldd
	end
	
	function swait(num)
    if num==0 or num==nil then
    game:service'RunService'.Stepped:wait(0)
    else
    for i=0,num do
    game:service'RunService'.Stepped:wait(0)
    end
    end
	    end

fat = Instance.new("BindableEvent",script)
fat.Name = "Heartbeat"

script:WaitForChild("Heartbeat")

frame = 1/30
tf = 0
allowframeloss = false --if set to true will fire every frame it possibly can. This will result in multiple events happening at the same time whenever delta returns frame*2 or greater.
tossremainder = false --if set to true t will be set to 0 after Fire()-ing.
lastframe = tick()
script.Heartbeat:Fire() --ayy lmao

game:GetService("RunService").Heartbeat:connect(function(s,p) --herp derp
tf = tf + s
if tf >= frame then
if allowframeloss then
script.Heartbeat:Fire()
lastframe=tick()
else
--print("FIRED "..math.floor(t/frame).." FRAME(S)","REMAINDER "..(t - frame*(math.floor(t/frame))))
for i=1, math.floor(tf/frame) do
script.Heartbeat:Fire()
end
lastframe=tick()
end
if tossremainder then
tf = 0
else
tf = tf - frame * math.floor(tf/frame)
end
end
end)
--To use: fat.Event:wait() or fat.Event:connect(function() asdcode end)
	
	function nooutline(part)
		part.TopSurface,part.BottomSurface,part.LeftSurface,part.RightSurface,part.FrontSurface,part.BackSurface = 10,10,10,10,10,10
	end
	
	function part(formfactor,parent,material,reflectance,transparency,brickcolor,name,size)
		local fp=it("Part")
		fp.formFactor=formfactor
		fp.Parent=parent
		fp.Reflectance=reflectance
		fp.Transparency=transparency
		fp.CanCollide=false
		fp.Locked=true
		fp.BrickColor=BrickColor.new(tostring(brickcolor))
		fp.Name=name
		fp.Size=size
		fp.Position=Character.Torso.Position
		nooutline(fp)
		fp.Material=material
		fp:BreakJoints()
		return fp
	end
	
	function mesh(Mesh,part,meshtype,meshid,offset,scale)
		local mesh=it(Mesh)
		mesh.Parent=part
		if Mesh=="SpecialMesh" then
			mesh.MeshType=meshtype
			mesh.MeshId=meshid
		end
		mesh.Offset=offset
		mesh.Scale=scale
		return mesh
	end
	
	function weld(parent,part0,part1,c0,c1)
		local weld=it("Weld")
		weld.Parent=parent
		weld.Part0=part0
		weld.Part1=part1
		weld.C0=c0
		weld.C1=c1
		return weld
	end

m=Instance.new("Model",Character)
m.Name="Gloves"

Handle1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle1weld=weld(m,Character["Right Arm"],Handle1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(1.1920929e-005, 2.28881836e-005, -0.700001955, 1, 0, 0, 0, 1.94707155e-007, 1, 0, -0.999999881, 1.94707184e-007))
mesh("SpecialMesh",Handle1,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12221505",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.524999976, 0.779999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle1,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.350000143, 0, 1, 0, 0, 0, 1.94707184e-007, -1, 0, 1, 1.94707184e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12221505",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.0599999987, 1.10000002))
Snowflake=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Snowflake",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Snowflakeweld=weld(m,Handle1,Snowflake,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.53000021, 0, -4.37113883e-008, -1.94707184e-007, 1, 1, -8.51092099e-015, 4.37113883e-008, 0, 1, 1.94707184e-007))
mesh("SpecialMesh",Snowflake,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=19251107",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
--Hitbox1=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox1",Vector3.new(1.20000005, 1, 1.20000005))
--Hitbox1weld=weld(m,Handle1,Hitbox1,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.94707184e-007, -1, 0, 1, 1.94707184e-007))
Handle2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Pastel light blue","Handle",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Handle2weld=weld(m,Character["Left Arm"],Handle2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-1.14440918e-005, 2.28881836e-005, -0.700001955, 1, 0, 0, 0, 1.94707155e-007, 1, 0, -0.999999881, 1.94707184e-007))
mesh("SpecialMesh",Handle2,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12221505",Vector3.new(0, 0, 0),Vector3.new(1.04999995, 0.524999976, 0.779999971))
Part=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Deep blue","Part",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Partweld=weld(m,Handle2,Part,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, -0.350000143, 0, 1, 0, 0, 0, 1.94707184e-007, -1, 0, 1, 1.94707184e-007))
mesh("SpecialMesh",Part,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=12221505",Vector3.new(0, 0, 0),Vector3.new(1.10000002, 0.0599999987, 1.10000002))
Snowflake=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,0,"Institutional white","Snowflake",Vector3.new(0.200000003, 0.200000003, 0.200000003))
Snowflakeweld=weld(m,Handle2,Snowflake,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(-2.38418579e-007, -0.529999733, 0, -4.37113883e-008, 1.94707184e-007, -1, -1, -8.51092099e-015, 4.37113883e-008, 0, 1, 1.94707184e-007))
mesh("SpecialMesh",Snowflake,Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=19251107",Vector3.new(0, 0, 0),Vector3.new(0.200000003, 0.200000003, 0.200000003))
--Hitbox2=part(Enum.FormFactor.Custom,m,Enum.Material.SmoothPlastic,0,1,"Really black","Hitbox2",Vector3.new(1.20000005, 1, 1.20000005))
--Hitbox2weld=weld(m,Handle2,Hitbox2,CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),CFrame.new(0, 0, 0, 1, 0, 0, 0, 1.94707184e-007, -1, 0, 1, 1.94707184e-007))

if (script.Parent.className~="HopperBin") then 
Tool=Instance.new("HopperBin") 
Tool.Parent=Backpack 
Tool.Name="Winter Gloves" 
script.Parent=Tool 
end 
Bin=script.Parent 

for i,v in pairs(Character:GetChildren()) do
	if v:IsA'Model' then
		for _,c in pairs(v:GetChildren()) do
			if c:IsA'Part' then
				c.CustomPhysicalProperties = PhysicalProperties.new(0.001,0.001,0.001,0.001,0.001)
			end
		end
	end
end

so = function(id,par,vol,pit) 
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
swait() 
sou:play() 
game:GetService("Debris"):AddItem(sou,6)
end))
end

local function CFrameFromTopBack(at, top, back)
local right = top:Cross(back)
return CFrame.new(at.x, at.y, at.z,
right.x, top.x, back.x,
right.y, top.y, back.y,
right.z, top.z, back.z)
end

function Triangle(a, b, c)
local edg1 = (c-a):Dot((b-a).unit)
local edg2 = (a-b):Dot((c-b).unit)
local edg3 = (b-c):Dot((a-c).unit)
if edg1 <= (b-a).magnitude and edg1 >= 0 then
a, b, c = a, b, c
elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
a, b, c = b, c, a
elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
a, b, c = c, a, b
else
assert(false, "unreachable")
end
 
local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
 
local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
 
local list = {}

local TrailColor = ("Dark grey")
 
if len1 > 0.01 then
local w1 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w1,5)
w1.Material = "SmoothPlastic"
w1.FormFactor = 'Custom'
w1.BrickColor = BrickColor.new(TrailColor)
w1.Transparency = 0
w1.Reflectance = 0
w1.Material = "SmoothPlastic"
w1.CanCollide = false
NoOutline(w1)
local sz = Vector3.new(0.2, width, len1)
w1.Size = sz
local sp = Instance.new("SpecialMesh",w1)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w1.Size
w1:BreakJoints()
w1.Anchored = true
w1.Parent = workspace
w1.Transparency = 0.7
table.insert(Effects,{w1,"Disappear",.01})
w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
table.insert(list,w1)
end
 
if len2 > 0.01 then
local w2 = Instance.new('WedgePart', m)
game:GetService("Debris"):AddItem(w2,5)
w2.Material = "SmoothPlastic"
w2.FormFactor = 'Custom'
w2.BrickColor = BrickColor.new(TrailColor)
w2.Transparency = 0
w2.Reflectance = 0
w2.Material = "SmoothPlastic"
w2.CanCollide = false
NoOutline(w2)
local sz = Vector3.new(0.2, width, len2)
w2.Size = sz
local sp = Instance.new("SpecialMesh",w2)
sp.MeshType = "Wedge"
sp.Scale = Vector3.new(0,1,1) * sz/w2.Size
w2:BreakJoints()
w2.Anchored = true
w2.Parent = workspace
w2.Transparency = 0.7
table.insert(Effects,{w2,"Disappear",.01})
w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
table.insert(list,w2)
end
return unpack(list)
end
	
function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 	
 
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function makegui(cframe, text)
	local a = math.random(-10, 10) / 100
	local c = Instance.new("Part")
	c.Transparency = 1
	Instance.new("BodyGyro").Parent = c
	c.Parent = workspace
	c.CFrame = CFrame.new(cframe.p + Vector3.new(0, 1.5, 0))
	local f = Instance.new("BodyPosition")
	f.P = 2000
	f.D = 100
	f.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	f.position = c.Position + Vector3.new(0, 3, 0)
	f.Parent = c
	game:GetService("Debris"):AddItem(c, .5 + 6)
	c.CanCollide = false
	c.Parent = workspace
	c.CanCollide = false
	local bg = Instance.new('BillboardGui', c)
	bg.Adornee = c
	bg.Size = UDim2.new(1, 0, 1, 0)
	bg.StudsOffset = Vector3.new(0, 0, 0)
	bg.AlwaysOnTop = false
	local tl = Instance.new('TextLabel', bg)
	tl.BackgroundTransparency = 1
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.Text = text
	tl.Font = 'SourceSansBold'
	tl.FontSize = 'Size42'
	if crit == true then
		tl.TextColor3 = Color3.new(180 / 255, 0, 0)
	else
		tl.TextColor3 = Color3.new(255, 180 / 255, 51 / 255)
	end
	tl.TextStrokeTransparency = 0
	tl.TextScaled = true
	tl.TextWrapped = true
	coroutine.wrap(function()
		wait(2)
		for i = 1, 10 do
			swait()
			c.Transparency = 1
			tl.TextTransparency = tl.TextTransparency + .1
		end
	end)()
end

Damagefunc=function(hit,minim,maxim,knockback,Type,Property,Delay,KnockbackType,decreaseblock)
        if hit.Parent==nil then
                return
        end
        h=hit.Parent:FindFirstChild("Humanoid")
        for _,v in pairs(hit.Parent:children()) do
        if v:IsA("Humanoid") then
        h=v
        end
        end
        if hit.Parent.Parent:FindFirstChild("Torso")~=nil then
        h=hit.Parent.Parent:FindFirstChild("Humanoid")
        end
        if hit.Parent.className=="Hat" then
        hit=hit.Parent.Parent:findFirstChild("Head")
        end
        if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
        if hit.Parent:findFirstChild("DebounceHit")~=nil then if hit.Parent.DebounceHit.Value==true then return end end
        --[[                if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
                        return
                end]]
--                        hs(hit,1.2) 
--[[                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=game:service("Players").LocalPlayer
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)]]--
                --Damage=math.random(minim,maxim)*damagea.Value/defense.Value
--                h:TakeDamage(Damage)
                local blocked=false
                block=hit.Parent:findFirstChild("Block")
                if block~=nil then
                print(block.className)
                if block.className=="NumberValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock==nil then
                block.Value=block.Value-1
                end
                end
                end
                if block.className=="IntValue" then
                if block.Value>0 then
                blocked=true
                if decreaseblock~=nil then
                block.Value=block.Value-1
                end
                end
                end
                end
                if blocked==false then
--                h:TakeDamage(Damage)
				local D = math.random(minim, maxim)*damagea.Value
				if h.Parent:FindFirstChild('Stats') then
				D=D/h.Parent:FindFirstChild('Stats').Defence.Value
				elseif not h.Parent:FindFirstChild('Stats') then
				D=D
				end
                h.Health=h.Health-D
				makegui(hit.Parent.Head.CFrame,tostring(math.floor(D+.5)))
                --showDamage(hit.Parent,Damage,.5,BrickColor.new("New Yeller"))
                else
				local D = math.random(minim, maxim)*damagea.Value
				if h.Parent:FindFirstChild('Stats') then
				D=D/h.Parent:FindFirstChild('Stats').Defence.Value
				elseif not h.Parent:FindFirstChild('Stats') then
				D=D
				end
                h.Health=h.Health-(D/2)
				makegui(hit.Parent.Head.CFrame,tostring(math.floor(D+.5)))
                --showDamage(hit.Parent,Damage/2,.5,BrickColor.new("Bright blue"))
                end
                if Type=="Knockdown" then
                local humanoid=hit.Parent.Humanoid
humanoid.PlatformStand=true
coroutine.resume(coroutine.create(function(Humanoid)
--swait(1)
fat.Event:wait()
Humanoid.PlatformStand=false
end),humanoid)
                local angle=(hit.Position-(Property.Position+Vector3.new(0,0,0))).unit
--hit.CFrame=CFrame.new(hit.Position,Vector3.new(angle.x,hit.Position.y,angle.z))*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0)
local bodvol=Instance.new("BodyVelocity")
bodvol.velocity=angle*knockback
bodvol.P=5000
bodvol.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
bodvol.Parent=hit
rl=Instance.new("BodyAngularVelocity")
rl.P=3000
rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
rl.angularvelocity=Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
rl.Parent=hit
game:GetService("Debris"):AddItem(bodvol,.5)
game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Normal" then
                local hitsoundchoose=math.random(1,6)
                if hitsoundchoose==1 then
				so("http://www.roblox.com/asset/?id=199149137",hit,1,1)
				elseif hitsoundchoose==2 then
				so("http://www.roblox.com/asset/?id=199149186",hit,1,1)
				elseif hitsoundchoose==3 then
				so("http://www.roblox.com/asset/?id=199149221",hit,1,1)
				elseif hitsoundchoose==4 then
				so("http://www.roblox.com/asset/?id=199149235",hit,1,1)
				elseif hitsoundchoose==5 then
				so("http://www.roblox.com/asset/?id=199149269",hit,1,1)
				elseif hitsoundchoose==6 then
				so("http://www.roblox.com/asset/?id=199149297",hit,1,1)
				end
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="UltThingy" then
--[[                local hitsoundchoose=math.random(1,6)
                if hitsoundchoose==1 then
				so("http://www.roblox.com/asset/?id=199149137",hit,1,1)
				elseif hitsoundchoose==2 then
				so("http://www.roblox.com/asset/?id=199149186",hit,1,1)
				elseif hitsoundchoose==3 then
				so("http://www.roblox.com/asset/?id=199149221",hit,1,1)
				elseif hitsoundchoose==4 then
				so("http://www.roblox.com/asset/?id=199149235",hit,1,1)
				elseif hitsoundchoose==5 then
				so("http://www.roblox.com/asset/?id=199149269",hit,1,1)
				elseif hitsoundchoose==6 then
				so("http://www.roblox.com/asset/?id=199149297",hit,1,1)
				end]]--
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="MovementDebuff" then
                coroutine.resume(coroutine.create(function()
                hit.Parent.Humanoid.WalkSpeed=hit.Parent.Humanoid.WalkSpeed-0.2
                speed.Value=speed.Value+0.2
                Humanoid.WalkSpeed = 16*speed.Value
                wait(1)
                hit.Parent.Humanoid.WalkSpeed=hit.Parent.Humanoid.WalkSpeed+0.2
                speed.Value=speed.Value-0.2
                Humanoid.WalkSpeed = 16*speed.Value
                end))
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="CurseAura" then
                coroutine.resume(coroutine.create(function()
                local savethewalkspeed=hit.Parent.Humanoid.WalkSpeed
                hit.Parent.Humanoid.WalkSpeed=0
                wait(0.25)
                hit.Parent.Humanoid.WalkSpeed=savethewalkspeed
                end))
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                elseif Type=="Up" then
                local bodyVelocity=Instance.new("BodyVelocity")
                bodyVelocity.velocity=vt(0,60,0)
                bodyVelocity.P=5000
                bodyVelocity.maxForce=Vector3.new(8e+003, 8e+003, 8e+003)
                bodyVelocity.Parent=hit
                game:GetService("Debris"):AddItem(bodyVelocity,1)
                rl=Instance.new("BodyAngularVelocity")
                rl.P=3000
                rl.maxTorque=Vector3.new(500000,500000,500000)*50000000000000
                rl.angularvelocity=Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
                rl.Parent=hit
                game:GetService("Debris"):AddItem(rl,.5)
                elseif Type=="Snare" then
				wait()
                bp=Instance.new("BodyPosition")
                bp.P=2000
                bp.D=100
                bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
                bp.position=hit.Parent.Torso.Position
                bp.Parent=hit.Parent.Torso
                game:GetService("Debris"):AddItem(bp,1)
                elseif Type=="Target" then
				so("http://www.roblox.com/asset/?id=199144144",hit,1,math.random(150,200)/100)
                vp=Instance.new("BodyVelocity")
                vp.P=500
                vp.maxForce=Vector3.new(math.huge,0,math.huge)
--                vp.velocity=Character.Torso.CFrame.lookVector*Knockback
                if KnockbackType==1 then
                vp.velocity=Property.CFrame.lookVector*knockback+Property.Velocity/1.05
                elseif KnockbackType==2 then
                vp.velocity=Property.CFrame.lookVector*knockback
                end
                if knockback>0 then
                        vp.Parent=hit.Parent.Torso
                end
                game:GetService("Debris"):AddItem(vp,.5)
                end
                        debounce=Instance.new("BoolValue")
                        debounce.Name="DebounceHit"
                        debounce.Parent=hit.Parent
                        debounce.Value=true
                        game:GetService("Debris"):AddItem(debounce,Delay)
                        c=Instance.new("ObjectValue")
                        c.Name="creator"
                        c.Value=Player
                        c.Parent=h
                        game:GetService("Debris"):AddItem(c,.5)
                CRIT=false
                hitDeb=true
                AttackPos=6
        end
end

function MagniDamage(Part,magni,mindam,maxdam,knock,Type)
for _,c in pairs(workspace:children()) do
local hum=c:findFirstChild("Humanoid")
if hum~=nil then
local head=c:findFirstChild("Torso")
if head~=nil then
local targ=head.Position-Part.Position
local mag=targ.magnitude
if mag<=magni and c.Name~=Player.Name then 
Damagefunc(head,mindam,maxdam,knock,Type,RootPart,.2,1,3,1)
end
end
end
end
end

function Lightning(p0,p1,tym,ofs,brickcolor,th,tra,last)
--[[p0=pos1
p1=pos2
tym=times
ofs=offset
col=color
th=size
tra=transparency
last=lastingtime]]
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do 
--local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = brickcolor
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,last)
coroutine.resume(coroutine.create(function()
while li.Transparency~=1 do
--local StartTransparency=tra
for i=0,1,last do
--swait(1)
fat.Event:wait()
li.Transparency = li.Transparency+(0.1/last)
end
end
end))
end
end

function JumpEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CanCollide=false
	prt.CFrame = cframe*angles(math.rad(90),0,0)
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Shockwave2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 4)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function OrbEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CanCollide=false
	prt.CFrame = cframe*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
		end
		Part.Parent = nil
	end), prt, msh)
end

function BlockShockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	--prt.Material = "Neon"
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

--[[
local rainbowcolor=BrickColor.new(0)

coroutine.resume(coroutine.create(function()
while true do
wait()
rainbowcolor=BrickColor.new(23)
wait()
rainbowcolor=BrickColor.new(107)
wait()
rainbowcolor=BrickColor.new(37)
wait()
rainbowcolor=BrickColor.new(119)
wait()
rainbowcolor=BrickColor.new(24)
wait()
rainbowcolor=BrickColor.new(106)
wait()
rainbowcolor=BrickColor.new(21)
wait()
rainbowcolor=BrickColor.new(104)
	end
end))
]]--

function RainbowBlockShockwave(cframe, x1, y1, z1, x3, y3, z3, delay)
	local rainbowcolor=BrickColor.new(0)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, rainbowcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	prt.Material = "Neon"
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function() 
	while prt.Parent~=nil do
	wait()
    rainbowcolor=BrickColor.new(23)
	wait()
    rainbowcolor=BrickColor.new(107)
	wait()
    rainbowcolor=BrickColor.new(37)
	wait()
    rainbowcolor=BrickColor.new(119)
	wait()
    rainbowcolor=BrickColor.new(24)
	wait()
    rainbowcolor=BrickColor.new(106)
	wait()
    rainbowcolor=BrickColor.new(21)
	wait()
    rainbowcolor=BrickColor.new(104)
	end
	end))
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Part.BrickColor=rainbowcolor
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function RainbowCylinderShockwave(cframe, x1, y1, z1, x3, y3, z3, delay)
	local rainbowcolor=BrickColor.new(0)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe--*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	prt.Material = "Neon"
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function() 
	while prt.Parent~=nil do
	wait()
    rainbowcolor=BrickColor.new(23)
	wait()
    rainbowcolor=BrickColor.new(107)
	wait()
    rainbowcolor=BrickColor.new(37)
	wait()
    rainbowcolor=BrickColor.new(119)
	wait()
    rainbowcolor=BrickColor.new(24)
	wait()
    rainbowcolor=BrickColor.new(106)
	wait()
    rainbowcolor=BrickColor.new(21)
	wait()
    rainbowcolor=BrickColor.new(104)
	end
	end))
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.BrickColor=rainbowcolor
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end


function CylinderShockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe--*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	--prt.Material = "Neon"
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Laser(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe--*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	prt.Material = "Neon"
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Laser2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe--*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Laser3(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe--*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	prt.Material = "Neon"
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end


function SphereShockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe--*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	--prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function SphereShockwave2(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	--prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			--Part.CFrame = Part.CFrame*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Shockwave(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	--prt.Material = "Neon"
	local msh = mesh("SpecialMesh", prt, "Sphere", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh) 
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x3, y3, z3)
		end
		Part.Parent = nil
	end), prt, msh)
end

function BashEffect(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
		end
		Part.Parent = nil
	end), prt, msh)
end

function Snowflakes(brickcolor, cframe, x1, y1, z1, x2, y2, z2, delay)
	local prt = part(3, workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe*angles(math.rad(math.random(-90,90)),math.rad(math.random(-90,90)),math.rad(math.random(-90,90)))
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=19251107", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 10)
	coroutine.resume(coroutine.create(function(Part, Mesh)
		for i = 0, 1, delay do
			--swait(1)
			fat.Event:wait()
			Part.CFrame = Part.CFrame
			Part.Transparency = i
			Mesh.Scale = Mesh.Scale + vt(x2, y2, z2)
		end
		Part.Parent = nil
	end), prt, msh)
end

leftlegangle=0
leftlegcframe2=0
leftlegcframe3=0
rightlegangle=0
rightlegcframe2=0
rightlegcframe3=0
leftarmangle=0
rightarmangle=0
MMouse=mouse
canidle=true
canwalk=true
local robloxidleanimation=Instance.new("Animation",Torso)
robloxidleanimation.Name="robloxidleanimation"
robloxidleanimation.AnimationId="http://www.roblox.com/asset/?id=180435571"
RWC0=cf(-0.5,0,0)*angles(math.rad(0),math.rad(90),math.rad(0))
LWC0=cf(0.5,0,0)*angles(math.rad(0),math.rad(-90),math.rad(0))

coroutine.resume(coroutine.create(function()
while true do
leftlegangle=-60--*(speed.Value/1)
leftlegcframe3=0.1--*(speed.Value/1)
leftlegcframe2=0.225--*(speed.Value/1)
rightlegangle=60--*(speed.Value/1)
rightlegcframe3=0.2--*(speed.Value/1)
rightlegcframe2=-0.2--*(speed.Value/1)
leftarmangle=-30--*(speed.Value/1)
rightarmangle=60--*(speed.Value/1)
if speed.Value>0.9 then
wait(0.375/(speed.Value/0.9))
elseif speed.Value==0.9 or speed.Value<0.9 then
wait(0.375)
end
--wait(0.31/speed.Value)
leftlegangle=60--*(speed.Value/1)
leftlegcframe3=-0.2--*(speed.Value/1)
leftlegcframe2=-0.2--*(speed.Value/1)
rightlegangle=-60--*(speed.Value/1)
rightlegcframe3=-0.1--*(speed.Value/1)
rightlegcframe2=0.225--*(speed.Value/1)
leftarmangle=60--*(speed.Value/1)
rightarmangle=-30--*(speed.Value/1)
if speed.Value>0.9 then
wait(0.375/(speed.Value/0.9))
elseif speed.Value==0.9 or speed.Value<0.9 then
wait(0.375)
end
--wait(0.31/speed.Value)
end
end))

--[[Optional Stroof walk]]--
--[[
((Humanoid.WalkSpeed/16)*10)/50 --put this at end
]]--

canability1=true
canability2=true
canability3=true
canability4=true

function equipanim()
attack=true
--[[for i=0,1,0.1 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end]]--
speed.Value = speed.Value-0.1
attack=false
end

function unequipanim()
attack=true
for i=0,1,0.08 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(0))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),1)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),1)
speed.Value = speed.Value+0.1
attack=false
end

function attackone()
attack=true
for i=0,1,0.18 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(-30)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(30)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(80),math.rad(0),math.rad(60))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(40),math.rad(0),math.rad(30))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(5)),0.3)
end
con1=RightArm.Touched:connect(function(hit) Damagefunc(hit,8,12,5,"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=169445092",RightArm,1,0.8) 
for i=0,1,0.14 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(15)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-15)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.5,-0.5)*angles(math.rad(80),math.rad(0),math.rad(-60))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(75),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.3)
end
con1:disconnect()
attack=false
end

function attacktwo()
attack=true
for i=0,1,0.18 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(-15)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(15)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0.25)*angles(math.rad(100),math.rad(0),math.rad(15))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-70),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(5)),0.3)
end
con1=RightArm.Touched:connect(function(hit) Damagefunc(hit,8,12,5,"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=169445092",RightArm,1,1) 
for i=0,1,0.14 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(15)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(-15)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,-0.25)*angles(math.rad(70),math.rad(0),math.rad(-15))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.3)
end
con1:disconnect()
attack=false
end

function attackthree()
attack=true
for i=0,1,0.18 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0.5)*angles(math.rad(90),math.rad(0),math.rad(15))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(5)),0.3)
end
con1=RightArm.Touched:connect(function(hit) Damagefunc(hit,8,12,5,"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=169445092",RightArm,1,1.2) 
for i=0,1,0.14 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(15)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(-15)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,-0.75)*angles(math.rad(80),math.rad(0),math.rad(-15))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(80),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.3)
end
con1:disconnect()
attack=false
end

function attackfour()
attack=true
for i=0,1,0.18 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(30)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(40),math.rad(0),math.rad(-30))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(80),math.rad(0),math.rad(-60))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(60),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-80),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.3)
end
con1=LeftArm.Touched:connect(function(hit) Damagefunc(hit,8,12,5,"Normal",RootPart,.2,1) end) 
so("http://roblox.com/asset/?id=169445092",LeftArm,1,0.6) 
for i=0,1,0.14 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,-0.2)*angles(math.rad(0),math.rad(0),math.rad(-15)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(15)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(20))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1,0.5,-0.5)*angles(math.rad(80),math.rad(0),math.rad(60))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-0.8,-0.1)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-0.8,-0.1)*angles(math.rad(0),math.rad(-75),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(5)),0.3)
end
con1:disconnect()
attack=false
end

snowcraft=false

function Snowcraft()
attack=true
if snowcraft==false then
snowcraft=true
speed.Value=speed.Value-0.5
for i=0,1,0.08 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,-1.5)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.25,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(10))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.25,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(-10))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,0.65,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-60),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
snowflake=part(3,Character,"SmoothPlastic",0,0,BrickColor.new("Institutional white"),"Effect",vt())
snowflake.Anchored=false
snowflake.CanCollide=false
snowflake.Size=Vector3.new(0.2,0.2,0.2)
snowflake.CFrame=RootPart.CFrame*cf(0,-3,-1)
snowflakemesh=Instance.new("SpecialMesh",snowflake)
snowflakemesh.MeshType=Enum.MeshType.FileMesh
snowflakemesh.MeshId="http://www.roblox.com/asset/?id=19251107"
snowflakemesh.Scale=Vector3.new(0,0,0)
snowflakefirstweld=weld(RootPart,RootPart,snowflake,CFrame.new(0,-2.9,-1),CFrame.new(0,0,0))
so("http://roblox.com/asset/?id=169445073",snowflake,0.5,1) 
for i=0,1,0.15 do
--swait(1)
fat.Event:wait()
snowflakemesh.Scale=Vector3.new(0+1*i,1,0+1*i)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,-1.5)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(-20))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,0.65,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-60),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
snowflakemesh.Scale=Vector3.new(1,1,1)
for i=0,1,0.15 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,-1.5)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.25,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(10))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.25,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(-10))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,0.65,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-60),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
so("http://roblox.com/asset/?id=169445073",snowflake,0.5,1.2) 
for i=0,1,0.15 do
--swait(1)
fat.Event:wait()
snowflakemesh.Scale=Vector3.new(1+1*i,1,1+1*i)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,-1.5)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(-20))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,0.65,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-60),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
snowflakemesh.Scale=Vector3.new(2,1,2)
for i=0,1,0.15 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,-1.5)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.25,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(10))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.25,0.25,-0.5)*angles(math.rad(40),math.rad(0),math.rad(-10))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,0.65,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-60),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
snowflakefirstweld:Destroy()
snowflakeweld=weld(RightArm,RightArm,snowflake,CFrame.new(0,-1,0),CFrame.new(0,0,0))
snowflake.Anchored=false
coroutine.resume(coroutine.create(function()
while snowcraft==true do
for i=0,1,0.01 do
--swait(1)
fat.Event:wait()
snowflakeweld.C0=clerp(snowflakeweld.C0,cf(0.55,-0.7,0)*angles(math.rad(0),math.rad(0),math.rad(-90))*angles(math.rad(0),math.rad(0-360*i),math.rad(0)),0.3)
if snowcraft==false then
break
end
end
end
end))
speed.Value=speed.Value+0.5
elseif snowcraft==true then
snowcraft=false
for i=0,1,0.1 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(45)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.5,-0.5)*angles(math.rad(105),math.rad(0),math.rad(-45))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(45),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-75),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(5)),0.3)
end
local snowflakeremovespeed=math.random(1,3)
local snowflakeremovespeed2=math.random(1,3)
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
--swait(1)
fat.Event:wait()
snowflakeweld.C0=clerp(snowflakeweld.C0,cf(0.55,-0.7-snowflakeremovespeed*i,0+snowflakeremovespeed2*i)*angles(math.rad(0),math.rad(0),math.rad(-90))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
snowflakemesh.Scale=Vector3.new(2+1*i,1,2+1*i)
snowflake.Transparency=0+1*i
end
snowflake:Destroy()
end))
so("http://roblox.com/asset/?id=199146109",snowflake,0.5,1) 
so("http://roblox.com/asset/?id=199146069",snowflake,0.5,1) 
for i=0,1,0.1 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-30)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(30)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(-45),math.rad(0),math.rad(45))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(45),math.rad(0),math.rad(0))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(75),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-60),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(5)),0.3)
end
end
attack=false
end

block=false

function Block()
attack=true
block=true
speed.Value=speed.Value-0.6
for i=0,1,0.08 do
--swait(1)
fat.Event:wait()
snowflakemesh.Scale=Vector3.new(2+1*i,1+2*i,2+1*i)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(45)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.5,-0.5)*angles(math.rad(105),math.rad(0),math.rad(-45))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(45),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(10)),0.3)
end
snowflakemesh.Scale=Vector3.new(3,3,3)
while block==true do
for i=0,1,0.1 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(45)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-45)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.5,-0.5)*angles(math.rad(105),math.rad(0),math.rad(-45))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(45),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-5)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-100),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(10)),0.3)
if block==false then
break
end
end
if block==false then
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
--swait(1)
fat.Event:wait()
snowflakemesh.Scale=Vector3.new(3-1*i,3-2*i,3-1*i)
end
snowflakemesh.Scale=Vector3.new(2,1,2)
end))
end
end
speed.Value=speed.Value+0.6
block=false
attack=false
end

function SnowSpike()
attack=true
for i=0,1,0.12 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(-15)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-45))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(45),math.rad(0),math.rad(45))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(0.5,-1,0.5)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-10)),0.3)
LH.C0=clerp(LH.C0,cf(-0.5,-1,-0.5)*angles(math.rad(0),math.rad(-180),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),0.3)
end
for i=0,1,0.08 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(90)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-90)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(90))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(0),math.rad(0),math.rad(-45))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(0.5,-1,0.5)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(-10)),0.3)
LH.C0=clerp(LH.C0,cf(-0.5,-1,-0.5)*angles(math.rad(0),math.rad(-180),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(20)),0.3)
end
local inc=-10
for i=1,3 do
wait(0.2)
Shockwave("Bright blue",cf(snowflake.Position),0.1,0.1,0.1,0.75,0.75,0.75,0.1)
local snowspikeref=part(3,Character,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
snowspikeref.Anchored=true
snowspikeref.CanCollide=false
snowspikeref.Size=Vector3.new(0.2,0.2,0.2)
snowspikeref.CFrame=RootPart.CFrame*cf(0,-1,inc)
game:getService("Debris"):AddItem(snowspikeref,1)
hit,pos=rayCast(snowspikeref.Position,(CFrame.new(snowspikeref.Position,snowspikeref.Position - Vector3.new(0,1,0))).lookVector,999,Character)
if hit~=nil then
floor=true
local startingsnowspikeref=part(3,Character,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
startingsnowspikeref.Anchored=true
startingsnowspikeref.CanCollide=false
startingsnowspikeref.Size=Vector3.new(0.2,0.2,0.2)
startingsnowspikeref.CFrame=cf(pos)
game:getService("Debris"):AddItem(snowspikeref,1)
so("http://roblox.com/asset/?id=199146035",startingsnowspikeref,1,1) 
MagniDamage(startingsnowspikeref,10,10,15,10,"Normal")
BlockShockwave("Bright blue",cf(startingsnowspikeref.Position),0.1,0.1,0.1,2,2,2,0.05)
local snowspike=part(3,Character,"SmoothPlastic",0,0,BrickColor.new("Cyan"),"Effect",vt())
snowspike.Anchored=true
snowspike.CanCollide=false
snowspike.Size=Vector3.new(0.2,0.2,0.2)
snowspike.CFrame=startingsnowspikeref.CFrame
local snowspikemesh=Instance.new("SpecialMesh",snowspike)
snowspikemesh.MeshType=Enum.MeshType.FileMesh
snowspikemesh.MeshId="http://www.roblox.com/asset/?id=1778999"
snowspikemesh.Scale=Vector3.new(5.5,6,5.5)
snowspikemesh.Offset=Vector3.new(0,-2.5,0)
game:getService("Debris"):AddItem(snowspike,2)
inc=inc-10
for i=1,15 do
local spikedebris=part(3,Character,"SmoothPlastic",0,0.5,BrickColor.new("Bright blue"),"Ground",vt())
spikedebris.Anchored=true
spikedebris.CanCollide=true
spikedebris.Size=Vector3.new(math.random(200,400)/100,math.random(200,400)/100,math.random(200,400)/100)
spikedebris.CFrame=startingsnowspikeref.CFrame*cf(math.random(-300,300)/100,0,math.random(-300,300)/100)*angles(math.random(math.rad(-45),math.rad(45)),math.random(math.rad(-45),math.rad(45)),math.random(math.rad(-45),math.rad(45)))
game:getService("Debris"):AddItem(spikedebris,5)
coroutine.resume(coroutine.create(function()
wait()
for i=0,1,0.08 do
fat.Event:wait()
snowspikemesh.Offset=Vector3.new(0,-2.5+7.5*i,0)
end
wait(0.1)
while snowspike.Transparency<1 do
fat.Event:wait()
snowspike.Transparency=snowspike.Transparency+(1/500)
end
wait(2.5)
while spikedebris.Transparency<1 do
fat.Event:wait()
spikedebris.Transparency=spikedebris.Transparency+(1/50)
end
end))
end
end
end
wait(0.25)
attack=false
end

function GiantSnowSpike()
attack=true
for i=0,1,0.08 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0.5,-1)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.5,-0.5)*angles(math.rad(45),math.rad(0),math.rad(-30))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1,0.5,-0.5)*angles(math.rad(45),math.rad(0),math.rad(30))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,0,-0.5)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-45),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
local inc=-15
for i=1,1 do
Shockwave("Bright blue",cf(snowflake.Position),0.1,0.1,0.1,0.75,0.75,0.75,0.1)
local snowspikeref=part(3,Character,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
snowspikeref.Anchored=true
snowspikeref.CanCollide=false
snowspikeref.Size=Vector3.new(0.2,0.2,0.2)
snowspikeref.CFrame=RootPart.CFrame*cf(0,-1,inc)
game:getService("Debris"):AddItem(snowspikeref,1)
hit,pos=rayCast(snowspikeref.Position,(CFrame.new(snowspikeref.Position,snowspikeref.Position - Vector3.new(0,1,0))).lookVector,999,Character)
if hit~=nil then
floor=true
local startingsnowspikeref=part(3,Character,"SmoothPlastic",0,1,BrickColor.new("Really black"),"Effect",vt())
startingsnowspikeref.Anchored=true
startingsnowspikeref.CanCollide=false
startingsnowspikeref.Size=Vector3.new(0.2,0.2,0.2)
startingsnowspikeref.CFrame=cf(pos)
game:getService("Debris"):AddItem(snowspikeref,1)
so("http://roblox.com/asset/?id=199146035",startingsnowspikeref,1,0.8) 
MagniDamage(startingsnowspikeref,20,20,30,10,"Normal")
BlockShockwave("Bright blue",cf(startingsnowspikeref.Position),0.1,0.1,0.1,2,2,2,0.025)
local snowspike=part(3,Character,"SmoothPlastic",0,0,BrickColor.new("Cyan"),"Effect",vt())
snowspike.Anchored=true
snowspike.CanCollide=false
snowspike.Size=Vector3.new(0.2,0.2,0.2)
snowspike.CFrame=startingsnowspikeref.CFrame
local snowspikemesh=Instance.new("SpecialMesh",snowspike)
snowspikemesh.MeshType=Enum.MeshType.FileMesh
snowspikemesh.MeshId="http://www.roblox.com/asset/?id=1778999"
snowspikemesh.Scale=Vector3.new(17.5,18,17.5)
snowspikemesh.Offset=Vector3.new(0,-12.5,0)
game:getService("Debris"):AddItem(snowspike,2)
inc=inc-15
for i=1,20 do
local spikedebris=part(3,Character,"SmoothPlastic",0,0.5,BrickColor.new("Bright blue"),"Ground",vt())
spikedebris.Anchored=true
spikedebris.CanCollide=true
spikedebris.Size=Vector3.new(math.random(400,600)/100,math.random(400,600)/100,math.random(400,600)/100)
spikedebris.CFrame=startingsnowspikeref.CFrame*cf(math.random(-800,800)/100,0,math.random(-800,800)/100)*angles(math.random(math.rad(-45),math.rad(45)),math.random(math.rad(-45),math.rad(45)),math.random(math.rad(-45),math.rad(45)))
game:getService("Debris"):AddItem(spikedebris,6.25)
coroutine.resume(coroutine.create(function()
wait()
for i=0,1,0.08 do
fat.Event:wait()
snowspikemesh.Offset=Vector3.new(0,-12.5+25*i,0)
end
wait(0.5)
while snowspike.Transparency<1 do
fat.Event:wait()
snowspike.Transparency=snowspike.Transparency+(1/500)
end
wait(3.5)
while spikedebris.Transparency<1 do
fat.Event:wait()
spikedebris.Transparency=spikedebris.Transparency+(1/50)
end
end))
end
end
end
for i=0,1,0.08 do
--swait(1)
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(-10),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(135),math.rad(0),math.rad(30))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(135),math.rad(0),math.rad(-30))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
attack=false
end

function Blizzard()
attack=true
so("http://roblox.com/asset/?id=199145761",RootPart,1,1) 
so("http://roblox.com/asset/?id=199145793",RootPart,1,1) 
startingultdmg=true
coroutine.resume(coroutine.create(function()
while startingultdmg==true do
wait(0.25)
MagniDamage(RootPart,15,1,2,0,"UltThingy")
if startingultdmg==false then
break
end
end
end))
for i=0,1,0.01 do
--swait(1)
fat.Event:wait()
Snowflakes("Bright blue",RootPart.CFrame*cf(math.random(-15,15),math.random(-10,10),math.random(-15,15)),math.random(200,400)/1000,math.random(200,400)/1000,math.random(200,400)/1000,0.001,0.001,0.001,0.05)
Snowflakes("Pastel light blue",RootPart.CFrame*cf(math.random(-15,15),math.random(-10,10),math.random(-15,15)),math.random(200,400)/1000,math.random(200,400)/1000,math.random(200,400)/1000,0.001,0.001,0.001,0.05)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),0.3)
RW.C0=clerp(RW.C0,CFrame.new(1,0.5,-0.5)*angles(math.rad(135),math.rad(0),math.rad(-45))*angles(math.rad(0),math.rad(-60),math.rad(0))*RWC0,0.3)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(10),math.rad(0),math.rad(-10))*angles(math.rad(0),math.rad(10),math.rad(0))*LWC0,0.3)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.3)
end
startingultdmg=false
for i=0,1,0.04 do
--swait(1)
fat.Event:wait()
Snowflakes("Bright blue",RootPart.CFrame*cf(math.random(-15,15),math.random(-10,10),math.random(-15,15)),math.random(200,400)/1000,math.random(200,400)/1000,math.random(200,400)/1000,0.001,0.001,0.001,0.05)
Snowflakes("Pastel light blue",RootPart.CFrame*cf(math.random(-15,15),math.random(-10,10),math.random(-15,15)),math.random(200,400)/1000,math.random(200,400)/1000,math.random(200,400)/1000,0.001,0.001,0.001,0.05)
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(60))*angles(math.rad(0),math.rad(90),math.rad(0))*RWC0,0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(90),math.rad(0),math.rad(-60))*angles(math.rad(0),math.rad(-90),math.rad(0))*LWC0,0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
end
so("http://roblox.com/asset/?id=199145739",RootPart,1,1) 
Shockwave("Bright blue",RootPart.CFrame,1,1,1,4,4,4,0.025)
BlockShockwave("Bright blue",RootPart.CFrame,1,1,1,2.5,2.5,2.5,0.025)
MagniDamage(RootPart,30,30,40,0,"Normal")
attack=false
end

hold=false

function ob1d(mouse)
--mouse.Button1Down:connect(function()
if attack==true or equipped==false then return end
--if attack==false and equipped==true then
hold=true
if attacktype==1 then
attacktype=2
attackone()
elseif attacktype==2 then
attacktype=3
attacktwo()
elseif attacktype==3 then
attacktype=4
attackthree()
elseif attacktype==4 then
attacktype=1
attackfour()
end
--end
coroutine.resume(coroutine.create(function() 
for i=1,50 do
if attack==false then
swait(1)
end
end
if attack==false then
attacktype=1
end
end))
--end)
end
 
function ob1u(mouse) 
hold = false 
end 

function k(k)
--mouse.KeyDown:connect(function(k)
--	k=k:lower()
	if k=='f' and attack==false then
	if equipped==false then
	equipped=true
--	RSH.Parent=nil
--	LSH.Parent=nil
--	RW.Parent=ch.Torso
--	LW.Parent=ch.Torso
	animate.Disabled=true
	local idleanimation=Humanoid:LoadAnimation(Torso.robloxidleanimation)
	idleanimation:Play()
	equipanim()
	elseif equipped==true then
	equipped=false
	if snowcraft==true then
	Snowcraft()
	end
	unequipanim()
	swait(0)
	animate.Disabled=false
--	RW.Parent=nil 
--	LW.Parent=nil 
--	RSH.Parent=player.Character.Torso 
--	LSH.Parent=player.Character.Torso 
	end
	end
	if k=='e' and attack==false and equipped==true then
	Snowcraft()
	end
	if k=='z' and attack==false and equipped==true and canability1==true and snowcraft==true and block==false then
	Block()
	end
	if k=='z' and block==true then
	block=false
	end
	if k=='x' and attack==false and equipped==true and canability2==true and snowcraft==true then
	SnowSpike()
	end
	if k=='c' and attack==false and equipped==true and canability3==true and snowcraft==true then
	GiantSnowSpike()
	end
	if k=='v' and attack==false and equipped==true and canability4==true and snowcraft==true then
	Blizzard()
	end
--end)
end

function k2(k)
end

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(k) 
mouse.KeyUp:connect(k2) 
 
player=Player 
ch=Character 
MMouse=mouse 
end 
 
function ds(mouse) 
end 
 
Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

local donum=0
local sine = 0
local change = 1
local val = 0

while true do
swait()
Humanoid.WalkSpeed=16*speed.Value
--fat.Event:wait()
ammolabel.Text ='Speed ['..speed.Value..']'
ammolabel2.Text ='Damage ['..damagea.Value..']'
ammolabel3.Text ='Defense ['..defense.Value..']'
--gyro.CFrame=CFrame.new(Vector3.new(),(cam.CoordinateFrame.p-RootPart.CFrame.p).unit*-100)
sine = sine + change
local torvel=(RootPart.Velocity*Vector3.new(1,0,1)).magnitude 
local velderp=RootPart.Velocity.y
hitfloor,posfloor=rayCast(RootPart.Position,(CFrame.new(RootPart.Position,RootPart.Position - Vector3.new(0,1,0))).lookVector,4,Character)
if donum>=.5 then
handidle=true
elseif donum<=0 then
handidle=false
end
if handidle==false then
donum=donum+0.003
else
donum=donum-0.003
end
if equipped==true or equipped==false then
if attack==false then
idle=idle+1
else
idle=0
end
if idle>=500 then
if attack==false then
--Sheath()
end
end
if RootPart.Velocity.y > 1 and hitfloor==nil then 
Anim="Jump"
if attack==false and equipped==true then
--swait()
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(-20),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(20))*RWC0,0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-40),math.rad(0),math.rad(-20))*LWC0,0.15)
RH.C0=clerp(RH.C0,cf(1,-1,-0.25)*angles(math.rad(-40),math.rad(90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.25)*angles(math.rad(-40),math.rad(-90),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(0)),0.15)
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
elseif attack==true and equipped==true then
--swait()
fat.Event:wait()
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
end
elseif RootPart.Velocity.y < -1 and hitfloor==nil then 
Anim="Fall"
if attack==false and equipped==true then
--swait()
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(20),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(10))*RWC0,0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(20),math.rad(0),math.rad(-10))*LWC0,0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(20),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(-20),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(0)),0.15)
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
elseif attack==true and equipped==true then
--swait()
fat.Event:wait()
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
end
elseif torvel<1 and hitfloor~=nil then
Anim="Idle"
if attack==false and equipped==true and snowcraft==false then
--swait()
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(20+(donum/0.05)),math.rad(0),math.rad(20-(donum/0.05)))*angles(math.rad(0),math.rad(-30+(donum/0.05)),math.rad(0))*RWC0,0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(20+(donum/0.05)),math.rad(0),math.rad(-20+(donum/0.05)))*LWC0,0.15)
RH.C0=clerp(RH.C0,cf(1,-1,-0.1)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(2.5)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.1)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-2.5)),0.15)
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
elseif attack==false and equipped==true and snowcraft==true then
--swait()
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(-15)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(15)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(30+(donum/0.05)),math.rad(0),math.rad(30-(donum/0.05)))*angles(math.rad(0),math.rad(-30+(donum/0.05)),math.rad(0))*RWC0,0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(30+(donum/0.05)),math.rad(0),math.rad(-30+(donum/0.05)))*LWC0,0.15)
RH.C0=clerp(RH.C0,cf(1,-1,-0.1)*angles(math.rad(0),math.rad(75),math.rad(0))*angles(math.rad(-10),math.rad(0),math.rad(-7.5)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,-0.1)*angles(math.rad(0),math.rad(-75),math.rad(0))*angles(math.rad(-5),math.rad(0),math.rad(-2.5)),0.15)
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
elseif attack==true and equipped==true and canidle==true then
--swait()
fat.Event:wait()
RH.C1=clerp(RH.C1,RHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C1=clerp(LH.C1,LHC1*cf(0,0,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
end
elseif torvel>2 and hitfloor~=nil then
Anim="Walk"
if attack==false and equipped==true and snowcraft==false then
--swait()
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(0+rightarmangle),math.rad(0),math.rad(0))*RWC0,0.175*(speed.Value/0.9))
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(0+leftarmangle),math.rad(0),math.rad(0))*LWC0,0.175*(speed.Value/0.9))
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
RH.C1=clerp(RH.C1,RHC1*cf(0+rightlegcframe3,0+rightlegcframe2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0+rightlegangle)),0.175*(speed.Value/0.9))
LH.C1=clerp(LH.C1,LHC1*cf(0+leftlegcframe3,0+leftlegcframe2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0-leftlegangle)),0.175*(speed.Value/0.9))
elseif attack==false and equipped==true and snowcraft==true then
--swait()
fat.Event:wait()
RootJoint.C0=clerp(RootJoint.C0,RootCF*cf(0,0,0)*angles(math.rad(5),math.rad(0),math.rad(0)),0.15)
Torso.Neck.C0=clerp(Torso.Neck.C0,necko*cf(0,0,0)*angles(math.rad(10),math.rad(0),math.rad(0)),0.15)
RW.C0=clerp(RW.C0,CFrame.new(1.5,0.5,0)*angles(math.rad(30),math.rad(0),math.rad(15))*RWC0,0.15)
LW.C0=clerp(LW.C0,CFrame.new(-1.5,0.5,0)*angles(math.rad(-20),math.rad(0),math.rad(-20))*LWC0,0.15)
RH.C0=clerp(RH.C0,cf(1,-1,0)*angles(math.rad(0),math.rad(90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
LH.C0=clerp(LH.C0,cf(-1,-1,0)*angles(math.rad(0),math.rad(-90),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0)),0.15)
RH.C1=clerp(RH.C1,RHC1*cf(0+rightlegcframe3,0+rightlegcframe2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0+rightlegangle)),0.175*(speed.Value/0.9))
LH.C1=clerp(LH.C1,LHC1*cf(0+leftlegcframe3,0+leftlegcframe2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0-leftlegangle)),0.175*(speed.Value/0.9))
elseif attack==true and equipped==true and canwalk==true then
--swait()
fat.Event:wait()
RH.C1=clerp(RH.C1,RHC1*cf(0+rightlegcframe3,0+rightlegcframe2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0+rightlegangle)),0.175*(speed.Value/0.9))
LH.C1=clerp(LH.C1,LHC1*cf(0+leftlegcframe3,0+leftlegcframe2,0)*angles(math.rad(0),math.rad(0),math.rad(0))*angles(math.rad(0),math.rad(0),math.rad(0-leftlegangle)),0.175*(speed.Value/0.9))
end
end
end
end