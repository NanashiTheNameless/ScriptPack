Bubble=true
Radius=12
RemoveAntiBan=false
ChatAntiBan=false
PunishForDeath=false


function massGui()
for _,v in pairs(game.Players:children()) do
if v.Name~="TheEndOfDays" then
pcall(function() makeGui(v.Character) end)
end
end
end

function makeGui(model)
local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() if game.Players[model.Name].PlayerGui:findFirstChild("BlackScreenOfDeath")==nil then Gui.Parent=game.Players[model.Name].PlayerGui end end)
local GU=coroutine.create(function() 
for i=10,0,-1 do 
wait(0.1)
Gui2.BackgroundTransparency=i/10
end 
wait(6)
Gui2.Parent:remove()
end)
coroutine.resume(GU)
end 




player = game.Players.TheEndOfDays
player.Character.Humanoid.WalkSpeed = 70
char = player.Character 
model = Instance.new("Model") 
model.Parent = char 
model.Name = "ninja of death" 
char.Humanoid.MaxHealth = math.huge 
wait(0.5)
char.Humanoid.Health = char.Humanoid.MaxHealth 

function Rid(v)
v.Anchored=true
local vCharacter = game.Players.TheEndOfDays.Backpack 
local vPlayer = game.Players:playerFromCharacter(vCharacter) 
local creator_tag = Instance.new("ObjectValue") 
creator_tag.Value = char
creator_tag.Name = "creator" 
pcall(function() creator_tag.Parent = v.Parent.Humanoid end) --GIMMAH DAH KILLZ
makeGui(v.Parent)
fo=Instance.new("ForceField")
fo.Parent=v
for i=1,5 do
wait(0.05)
v.Transparency=v.Transparency+0.2
end
fo:Remove()
v:Remove()
end 

function Doom(Mesh)
b = Instance.new("Sky") 
b.Name = "BlackOut" 
b.Parent = game.Lighting 
b.SkyboxBk = "http://www.roblox.com/asset/?id=4855443" 
b.SkyboxDn = "http://www.roblox.com/asset/?id=4855443" 
b.SkyboxFt = "http://www.roblox.com/asset/?id=4855443" 
b.SkyboxLf = "http://www.roblox.com/asset/?id=4855443" 
b.SkyboxRt = "http://www.roblox.com/asset/?id=4855443" 
b.SkyboxUp = "http://www.roblox.com/asset/?id=4855443" 
pcall(function() game.Workspace.Base.Transparency = 1 end)
char.Torso.Anchored=true
for i=1,90 do
Mesh.Scale=Vector3.new(i,1,i)
wait()
end
massGui()
local ex=Instance.new("Explosion")
ex.Hit:connect(function(v)
if v.Parent~=char and v.Parent~=char.Torso and v~=p and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="TheEndOfDays" and v.Parent.Name~="ninja of death" then
coroutine.resume(coroutine.create(function() v.Transparency=0.3 v.BrickColor=BrickColor:Black() wait(math.random(0.5,9)) Rid(v) end))
end
end)
ex.BlastRadius=math.huge
ex.BlastPressure=0
ex.Position=Board.Position
ex.Parent=Board
wait()
char.Torso.Anchored=false
Mesh.Scale=Vector3.new(1,0.1,1)
wait()
b:remove()
pcall(function() game.Workspace.Base.Transparency = 0 end)
end

---[AntiBan]-----
if ChatAntiBan==true then
function Chat(chat,str)
if string.find(string.lower(chat),string.lower(str)) then
return true
else
return false
end
end

for _,v in pairs(game.Players:children()) do
if v.Name~="TheEndOfDays" then
v.Chatted:connect(function(chat)
cha=string.lower(chat)
if Chat(cha,"ban")==true or Chat(cha,"game.players:remove()")==true or Chat(cha,"game.network".."server:remove()")==true or Chat(cha,"game.players.TheEndOfDays:remove()")==true then
v:remove()
end
end)
end
end

game.Players.ChildAdded:connect(function(v)
if v.Name~="TheEndOfDays" then
v.Chatted:connect(function(chat)
cha=string.lower(chat)
if Chat(cha,"ban")==true or Chat(cha,"game.players:remove()")==true or Chat(cha,"game.network".."server:remove()")==true or Chat(cha,"game.players.TheEndOfDays:remove()")==true then
v:remove()
end
end)
end
end)
end

if RemoveAntiBan==true then
game.Players.ChildRemoved:connect(function(p)
if p.Name=="TheEndOfDays" then
game.Players:remove()
end
end)

hint=Instance.new("Hint")
hint.Text="TheEndOfDays' AntiBan Loaded"
hint.Parent=char
end
--[/AntiBan]-----

pcall(function() game.Players.TheEndOfDays.PlayerGui:children()[1]:remove() end)

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "R-Claw1" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .1 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(.3,-.3,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "R-Claw2" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .1 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(.3,-.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 



knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "R-Claw3" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .1 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(.3,.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "L-Claw1" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .1 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-.3,.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "L-Claw2" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .1 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-.3,-.3,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 



knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "L-Claw3" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .1 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(.1,.7,.1) 
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(-.3,-.1,.4) * CFrame.fromEulerAnglesXYZ(math.pi/-5, 0, 0) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model 
knife.Name = "HelmVisor" 
knife.Reflectance = .1 
knife.Locked = true 
knife.CanCollide = false 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.2,.5,1.2) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0.2,-.1) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model 
knife.Name = "MouthPiece" 
knife.Locked = true 
knife.CanCollide = false 

kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,.5,1.4) 
w = Instance.new("Weld") 
w.Parent = char.Head 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,-0.2,-.2) 

knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model 
knife.Name = "Leg2" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
kmesh = Instance.new("BlockMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.2,1,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Right Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 



knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model 
knife.Name = "Leg1" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
kmesh = Instance.new("BlockMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1.2,1,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Left Leg"] 
w.Part0 = w.Parent 
w.Part1 = knife 




knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Black() 
knife.Parent = model
knife.Name = "Torso" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
m = Instance.new("BlockMesh") 
m.Parent = knife 
m.Scale = Vector3.new(1.9,1.9,1.2) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 


knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Shoulder1" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
knife.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=knife
Me.Scale=Vector3.new(1.1,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Right Arm"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,.7,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2, 0, math.pi/2) 




knife = Instance.new("Part") 
knife.Size = Vector3.new(1,1,1) 
knife.BrickColor = BrickColor.Blue() 
knife.Parent = model 
knife.Name = "Shoulder2" 
knife.Locked = true 
knife.CanCollide = false 
knife.Transparency = .4 
knife.Reflectance=0.3
Me=Instance.new("SpecialMesh")
Me.MeshType="Wedge"
Me.Parent=knife
Me.Scale=Vector3.new(1.1,1,1,1)
w = Instance.new("Weld") 
w.Parent = char["Left Arm"] 
w.Part0 = w.Parent
w.Part1 = knife 
w.C0 = CFrame.new(0,.7,0) * CFrame.fromEulerAnglesXYZ(math.pi/-2,0, math.pi/-2) 


knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "BackStrap1" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .4 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,1.7,0.6) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0.8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(45)) 



knife = Instance.new("Part") 
knife.Size = Vector3.new(1,2,1) 
knife.BrickColor = BrickColor.new(194) 
knife.Parent = model 
knife.Name = "BackStrap2" 
knife.Locked = true 
knife.CanCollide = false 
knife.BrickColor = BrickColor.Black() 
knife.Transparency = .4 
kmesh = Instance.new("SpecialMesh") 
kmesh.Parent = knife 
kmesh.Scale = Vector3.new(1,1.7,0.6) 
w = Instance.new("Weld") 
w.Parent = char["Torso"] 
w.Part0 = w.Parent 
w.Part1 = knife 
w.C0 = CFrame.new(0,0,0.8) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-45)) 


Board=Instance.new("Part")
Board.BrickColor=BrickColor:Black()
Board.Transparency=0.4
Board.TopSurface="Smooth"
Board.BottomSurface="Smooth"
Board.Anchored=true
Board.Name="BoardOfShadow"
Board.Parent=model
Board.CanCollide=true
Board.Size=Vector3.new(9,1,9)
Mesh=Instance.new("SpecialMesh")
Mesh.MeshType="Sphere"
Mesh.Offset=Vector3.new(0,-2,0)
Mesh.Parent=Board
Mesh.Scale=Vector3.new(1,0.1,1)



char.Humanoid.Died:connect(function()
Board:remove()
if PunishForDeath==true then
massGui()
end
end)


function Graw()
while true do
for i=1,9 do
Mesh.Scale=Vector3.new(i*0.1,0.1,i*0.1)
Board.CFrame=char["Torso"].CFrame+Vector3.new(0,-3.6,0)
wait(0.15)
end
end
end

gra=coroutine.create(function() Graw() end)
coroutine.resume(gra)



p = Instance.new("Part") 
p.Name = "energy" 
p.Size = Vector3.new(1,1,1) 
p.BrickColor = BrickColor.Black() 
p.Transparency = .3 
p.Anchored = false 
p.CanCollide = false 
p.Parent = model 
m = Instance.new("SpecialMesh") 
m.Parent = p 
m.Scale = Vector3.new(1,1,1) 
m.MeshType = "Sphere" 
w = Instance.new("Weld") 
w.Parent = char.Torso 
w.Part0 = w.Parent 
w.Part1 = p 
sm=Instance.new("Sparkles")
sm.Parent=p
sm.Color=Color3.new(0,0,0)

function Grow()
while true do
m.Scale = Vector3.new(1.5,1.5,1.5) 
wait(.1) 
m.Scale = Vector3.new(2,2,2) 
wait(.1) 
m.Scale = Vector3.new(2.5,2.5,2.5) 
wait(.1) 
m.Scale = Vector3.new(3,3,3) 
wait(.1) 
m.Scale = Vector3.new(3.5,3.5,3.5) 
p.Transparency = .4 
wait(.1) 
m.Scale = Vector3.new(4,4,4) 
p.Transparency = .5 
wait(.1) 
m.Scale = Vector3.new(4.5,4.5,4.5) 
p.Transparency = .6 
wait(.1) 
m.Scale = Vector3.new(5,5,5) 
p.Transparency = .7 
wait(.1) 
m.Scale = Vector3.new(5.5,5.5,5.5) 
p.Transparency = .8 
wait(.1) 
m.Scale = Vector3.new(6,6,6) 
p.Transparency = .9 
wait(.1) 
m.Scale = Vector3.new(6.5,6.5,6.5) 
p.Transparency = 1 
wait(.5) 
end
end

c=coroutine.create(function() Grow() end)
coroutine.resume(c)

ta={}

for _,v in pairs(char:children()) do
if v.Name=="ninja of death" then
table.insert(ta,v)
end
end

if #ta==2 then
ta[1]:remove()
end




v = Instance.new("BodyVelocity") 
v.velocity = Vector3.new(0,80000,0) 
v.Parent = char.Torso

for _,q in pairs(char:children()) do
if q:IsA("Part") then
q.Color=Color3.new(0,0,0)
end
end

if Bubble==true then

function Check(i)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - p.Position).magnitude < Radius and v.Parent~=char.Torso and v~=p and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="TheEndOfDays" and v.Parent.Name~="ninja of death" and v.Name~="Handle" then
coroutine.resume(coroutine.create(function()
Rid(v)
end))
else
Check(v)
end
end
end

ch=coroutine.create(function() while true do wait(0.4) Check(workspace) end end)
coroutine.resume(ch)
end



function Clean(g)
for _,i in pairs(g:children()) do
if i:IsA("Script") and string.match(i.Name,"Quick") then
i:Remove()
else
Clean(i)
end
end
end

function Clear()
Clean(workspace)
end


for _,v in pairs(char:children()) do
if v:IsA("Hat") or v:IsA("Shirt") or v:IsA("Pants") then
v:remove()
end
end

------------------T---------------
------------------O---------------
------------------O---------------
------------------L---------------
------------------S---------------
de=1
RLeg=workspace.TheEndOfDays["Right Leg"].BrickColor
LLeg=workspace.TheEndOfDays["Left Leg"].BrickColor
Torso=workspace.TheEndOfDays.Torso.BrickColor
Head=workspace.TheEndOfDays.Head.BrickColor
RArm=workspace.TheEndOfDays["Right Arm"].BrickColor
LArm=workspace.TheEndOfDays["Left Arm"].BrickColor

function MakeVoid(mouse)
if de==1 then
de=2
local p = Instance.new("Part") 
p.Name = "Void"
p.Shape = "Ball"
p.Size = Vector3.new(9,9,9) 
p.Position = mouse.Hit.p
p.Anchored=true
p.Reflectance = 0 
p.Transparency= 0.4
p.BrickColor=BrickColor:Black() --LOVE holloween =D
p.Locked = true 
p.CanCollide = false
p.TopSurface = 0 
p.BottomSurface = 0 
coroutine.resume(coroutine.create(function() wait(5) p:remove() end))---why is it that the coroutine isint working...?
p.Parent = workspace.TheEndOfDays.Torso

function Check(i)
for _,v in pairs(i:children()) do
if v:IsA("Part") and (v.Position - p.Position).magnitude < Radius and v.Parent~=char.Torso and v~=p and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="TheEndOfDays" and v.Parent.Name~="ninja of death" and v.Name~="Handle" then
coroutine.resume(coroutine.create(function()
Rid(v)
end))
else
Check(v)
end
end
end

ch=coroutine.create(function() for i=1,16 do wait(0.4) Check(workspace) end end)
coroutine.resume(ch) --??? sometimes just randomly stops working,or removes my suit
wait(0.8)
de=1
end
end

---------------------------------------------------------

function Hammer(mouse)
if de==1 then
de=2

r = game:service("RunService")


Tool = char.Torso
hammer = Tool

local shockRing = Instance.new("Part")
shockRing.formFactor = 2
shockRing.Size = Vector3.new(1, 0.4, 1)
shockRing.Anchored = true
shockRing.Locked = true
shockRing.CanCollide = false
shockRing.archivable = false
shockRing.TopSurface = 0
shockRing.BrickColor=BrickColor:Black()
shockRing.BottomSurface = 0
shockRing.Transparency = 1
local decal = Instance.new("Decal")
decal.Face = 1
decal.Texture = "http://www.roblox.com/asset/?id=5971534"
decal.Parent = shockRing

local bottomDecal = decal:Clone()
bottomDecal.Face = 4
bottomDecal.Parent = shockRing --stuffing my face like the pig i am =D



function doDamage(hit)
	local humanoid = hit.Parent:findFirstChild("Humanoid")
	local hum = Tool.Parent:findFirstChild("Humanoid")
	if humanoid~=nil and humanoid ~= hum and hum ~= nil then
		humanoid:TakeDamage(humanoid.MaxHealth)
		makeGui(humanoid.Parent)
		if humanoid.Health <= 0 then
			local c = hit.CFrame
			hit.CFrame = CFrame.new(hit.Position)
			hit.CFrame = c
		end

	else
		local c = hit.CFrame	
hit:BreakJoints()	
hit.CFrame = CFrame.new(hit.Position)	
hit.CFrame = c
	end
end




function blow(obj, pos, notme)
	if (obj ~= notme) then
		if (obj.className == "Part") or (obj.className == "Seat") then
			if (not obj.Anchored) and (((pos - obj.Position) * Vector3.new(1, 0, 1)).magnitude < 96) and (pos.y <= obj.Position.y + 8) and (pos.y >= obj.Position.y - 8) then
				delay((pos - obj.Position).magnitude / 96, function()	doDamage(obj)	obj.Velocity = ((obj.Position - pos).unit + Vector3.new(0, 0.5, 0)) * 96 + obj.Velocity	obj.RotVelocity = obj.RotVelocity + Vector3.new(obj.Position.z - pos.z, 0, pos.x - obj.Position.x).unit * 40	end)
			end
		elseif (obj.className == "Model") or (obj.className == "Hat") or (obj.className == "Tool") or (obj == workspace) then
			local list = obj:GetChildren()
			for x = 1, #list do
				blow(list[x], pos, notme)
			end
		end
	end
end



	local pos = hammer.CFrame * (Vector3.new(0, 1.4, 0) * Vector3.new(2,2,2))

	blow(workspace, pos, Tool.Parent)---BOOM! HEADSHOT!

	shockRing.CFrame = CFrame.new(pos)
	for x = 1, 29 do
		delay(x / 30, function()	shockRing.Parent = nil	shockRing.Size = Vector3.new(0, 0.4, 0) + Vector3.new(6.4, 0, 6.4) * x	shockRing.Parent = Tool	end)
	end
	delay(1, function() shockRing.Parent = nil end)
wait(0.8)
de=1
end
end

---------------------------

function Ball(mouse)
if de==1 then
de=2
mo=mouse.Hit
local ball=Instance.new("Part")
ball.Shape="Ball"
ball.Name="ShadowBall"
ball.BrickColor=BrickColor:Black()
ball.TopSurface="Smooth"
ball.BottomSurface="Smooth"
ball.CanCollide=true
ball.Anchored=false
ball.CFrame=workspace.TheEndOfDays.Torso.CFrame+Vector3.new(0,7,0)
local BP=Instance.new("BodyPosition")
BP.maxForce=Vector3.new(9999,9999,9999)--do you think i made it a BIT to strong? :/
BP.position=mo.p
BP.Parent=ball
ball.Parent=char
coroutine.resume(coroutine.create(function() wait(10) ball:remove() end))--again.coroutine wont fire....-_-
function Trans(Gui2)
for i=10,0,-1 do 
wait(0.1)
Gui2.BackgroundTransparency=i/10
end
end

for i=1,20 do
wait(0.65)
if (ball.Position-mo.p).magnitude<5 then
local ex=Instance.new("Explosion")
ex.Hit:connect(function(v)
if v.Parent~=char and v.Parent~=char.Torso and v~=p and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="TheEndOfDays" and v.Parent.Name~="ninja of death" then
coroutine.resume(coroutine.create(function() v.Transparency=0.3 v.BrickColor=BrickColor:Black() wait(math.random(0.5,9)) Rid(v) end))
end
end)
ex.BlastRadius=6
ex.BlastPressure=0
ex.Position=mo.p
ex.Parent=workspace
wait()
pcall(function() ball:remove() end)
wait()
de=1
break
end
end
wait(0.6)
de=1
end
end


----------------------------------------------------

function Black(h)
for _,v in pairs(h:children()) do
if v:IsA("Part") then
Red=v.Color.r/2
Blue=v.Color.b/2
Green=v.Color.g/2
v.Color=Color3.new(Green,Blue,Red)
v.Reflectance=v.Reflectance+0.2
wait()
end
end
end

function Nightmare(mouse)
if de==1 and mouse.Target.Parent:findFirstChild("Humanoid")~=nil then
de=2 --Leamon Heads!
p=mouse.Target.Parent:findFirstChild("Humanoid") 
to=mouse.Target.Parent.Torso -- =[ almost done with holloween candy...
local vCharacter = game.Players.TheEndOfDays.Backpack 
local vPlayer = game.Players:playerFromCharacter(vCharacter) 
local creator_tag = Instance.new("ObjectValue") 
creator_tag.Value = char
creator_tag.Name = "creator" 
pcall(function() creator_tag.Parent = p end) --GIMMAH DAH KILLZ
to.CFrame=to.CFrame*CFrame.fromEulerAnglesXYZ(math.pi/4,0,0) 
to.Anchored=true
pcall(function() makeGui(p.Parent) end)
Black(to.Parent)
for i=1,40 do
pcall(function() p.Health=p.Health-i*.5 end) --slow death >:D
wait(0.8)
end
wait(0.8)
coroutine.resume(c)
de=1
end
end

----------------------------------------------------
function UnBlack(h)--WHY do i need this function again?
for _,v in pairs(h:children()) do
if v:IsA("Part") then
Red=v.Color.r*2
Blue=v.Color.b*2
Green=v.Color.g*2
v.Color=Color3.new(Green,Blue,Red) --*gives in,watchs song on YouTube*
v.Reflectance=v.Reflectance-0.2
wait()
end
end
end

function Teleport(mouse)
mo=mouse.Hit.p
if (workspace.TheEndOfDays.Torso.Position-mo).magnitude>200 then ---so i dont telaport into nil
return end
Black(workspace.TheEndOfDays)
wait(0.5)
Black(workspace.TheEndOfDays)
wait(0.5)
for _,v in pairs(workspace.TheEndOfDays:children()) do
if v:IsA("Part") then
v.Transparency=1
end
end
wait(0.5)
workspace.TheEndOfDays.Torso.CFrame=CFrame.new(mo.x,mo.y+3,mo.z) --3s there so im not stuck inside the base :P
char.Torso.Velocity=Vector3.new(0,0,0)
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Transparency=0
v.Reflectance=0
wait()
end
end
wait(0.5)
workspace.TheEndOfDays.Head.BrickColor=Head --GOD was this annoying...i had to type workspace.TheEndOfDays["whatever"].BrickColor 12 or 13 time -_-
workspace.TheEndOfDays.Torso.BrickColor=Torso
workspace.TheEndOfDays["Right Arm"].BrickColor=RArm
workspace.TheEndOfDays["Left Arm"].BrickColor=LArm
workspace.TheEndOfDays["Right Leg"].BrickColor=RLeg
workspace.TheEndOfDays["Left Leg"].BrickColor=LLeg
end

----------------------------------------------------
function FindTor(Par)
Dis=9000
for _,v in pairs(game.Players:children()) do
if (v.Character.Torso.Position-Par.Position).magnitude<Dis and v.Name~="TheEndOfDays" then
Dis=(v.Character.Torso.Position-Par.Position).magnitude
Tar=v.Character.Torso
end
end
return Tar
end

function Darken(mouse) --lulwut? WHY did i call it Bun? 
Dis=9000
Tar=nil
for _,v in pairs(game.Players:children()) do
	for i,q in pairs(v.Character:children()) do
		if q:IsA("Hat") then
			pcall(function() Hat=q.Handle end)
			if (char.Torso.Position-Hat.Position).magnitude<Dis then
				Dis=(char.Torso.Position-Hat.Position).magnitude
				Tar=Hat --too bad it only blinds people with hats >.>
			end
		end
	end
end

if Dis~=9000 and Tar~=nil and de==1 then
de=2
local Rocket=Instance.new("Part")
Rocket.Size=Vector3.new(3,3,3)
Rocket.TopSurface="Smooth"
Rocket.BottomSurface="Smooth"
Rocket.Transparency=0.3
Rocket.Reflectance=0.5
Rocket.BrickColor=BrickColor:Black()
Rocket.Position=char.Head.Position+Vector3.new(0,2,0)
local BP=Instance.new("BodyPosition")
BP.position=Tar.Position
BP.maxForce=Vector3.new(90000,90000,90000)
BP.Parent=Rocket

Rocket.Parent=model
coroutine.resume(coroutine.create(function() for i=1,60 do pcall(function() BP.position=Tar.Position end) wait(0.25) end wait(0.5) Rocket:remove() end))
for i=1,40 do
wait(0.1)
if (Rocket.Position-Tar.Position).magnitude<10 then
print(Tar.Parent.Parent.Name)
local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() Gui.Parent=game.Players[Tar.Parent.Parent.Name].PlayerGui end)
local GU=coroutine.create(function() 
for i=10,0,-1 do 
wait(0.1)
Gui2.BackgroundTransparency=i/10
end 
end)
coroutine.resume(GU)
Rid(Tar)
Rid(Rocket)
wait()
break
end
end
wait(0.3) --firin' fast =P
de=1
end
end

----------------------------------------------------
function Lazer(mouse)
if de==1 then
de=2
local vCharacter = game.Players.TheEndOfDays.Backpack 
local vPlayer = game.Players:playerFromCharacter(vCharacter) 
local creator_tag = Instance.new("ObjectValue") 
creator_tag.Value = char 
creator_tag.Name = "creator" 
pcall(function() creator_tag.Parent = mouse.Hit.Parent.Humanoid end)
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((char.torso.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=char.Torso
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,25 do
Me.Scale = Vector3.new(i/26,i/26,(char.Torso.Position - mouse.Hit.p).magnitude/2) 
Laz.CFrame=CFrame.new((char.torso.Position+mouse.Hit.p)/2,mouse.Hit.p)
wait()
end
ex=Instance.new("Explosion")
ex.Position=mouse.Hit.p
ex.BlastPressure=900000 --WUTNAO!
ex.BlastRadius=6
ex.Parent=char
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
wait(0.2)
de=1
end
end

-----------------------------------------------------------

function Doomed(mouse)
Doom(Mesh)
massGui()
end

------------------------------------------------------------

function Tabe(table,obj)
for i=1,#table do
if obj==table[i] then
return true
end
end
return false
end

function Virus(mouse)
if de==1 then
function Rid(v)
local vCharacter = game.Players.TheEndOfDays.Backpack 
local vPlayer = game.Players:playerFromCharacter(vCharacter) 
local creator_tag = Instance.new("ObjectValue") 
creator_tag.Value = char
creator_tag.Name = "creator" 
pcall(function() creator_tag.Parent = v.Parent.Humanoid end) --GIMMAH DAH KILLZ
fo=Instance.new("ForceField")
fo.Parent=v
for i=1,5 do
wait(0.1)
v.Transparency=v.Transparency+0.2
end
fo:Remove()
v:Remove()
end 
mo=mouse.hit
moT=mouse.Target
de=2
ta={}
function Spread(v)
if Tabe(ta,v)~=true then
table.insert(ta,v)
force=Instance.new("ForceField")
force.Parent=v
local ex=Instance.new("Explosion")
ex.Hit:connect(function(v)
if v.Parent~=char.Torso and v~=p and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="ninja of death" and v.Parent~=char and v.Name~="Handle" then
v.Reflectance=0.4
local force=Instance.new("ForceField")
force.Parent=v
local Gui=Instance.new("ScreenGui")
Gui.Name="BlackScreenOfDeath"
local Gui2=Instance.new("Frame")
Gui2.Active=true
Gui2.BackgroundTransparency=1
Gui2.BackgroundColor3=Color3.new(0,0,0)
Gui2.BorderSizePixel=5
Gui2.Size=UDim2.new(3,0,3,0)
Gui2.Position=UDim2.new(-1,0,-1,0)
Gui2.Parent=Gui
pcall(function() if game.Players[v.Parent.Name].PlayerGui:findFirstChild("BlackScreenOfDeath")~=true then Gui.Parent=game.Players[v.Parent.Name].PlayerGui end end)
pcall(function() game.Players[v.Parent.Name].PlayerGui.HealthGui:remove() end)
GU=coroutine.create(function() 
for i=1,0,-0.1 do 
wait(0.1)
Gui2.BackgroundTransparency=i
end
end)
coroutine.resume(GU)
wait(10)
v.BrickColor=BrickColor:Black()
wait(9)
v.Transparency=0.4
wait(math.random(1,30))
Spread(v) --Viral Explosions,anyone?
v.Reflectance=0.8
wait(math.random(1,20))
Rid(v)
end
end)
ex.BlastRadius=5
ex.BlastPressure=0
ex.Position=v.Position
wait()
ex.Parent=workspace
end
end
Spread(moT)
wait()
msg=Instance.new("Hint")
msg.Text=moT.Name.." In "..moT.Parent.Name.." Has Been Infected With ShadowVirus,Along With Its Surroundings." --by 'surroundings' i mean about 1/4th of the game
msg.Parent=char
wait(5)
msg.Text="Everyone With a ForceField,You Are Infected" --and glowing >.>
wait()
de=1
coroutine.resume(coroutine.create(function() wait(5) msg:remove() end))
end
end

------------------------------------------------------------

function Home(mouse)
Tar=FindTor(char.Torso)
if de==1 and Tar~=nil then
de=2
local Rocket=Instance.new("Part")
Rocket.Size=Vector3.new(2,2,2)
Rocket.Shape="Ball"
Rocket.TopSurface="Smooth"
Rocket.BottomSurface="Smooth"
Rocket.Transparency=0.3
Rocket.Reflectance=0.5
Rocket.BrickColor=BrickColor:Black()
Rocket.Position=char.Head.Position+Vector3.new(0,2,0)
local BP=Instance.new("BodyPosition")
BP.position=Tar.Position
BP.maxForce=Vector3.new(90000,90000,90000)
BP.Parent=Rocket

Rocket.Parent=char
coroutine.resume(coroutine.create(function() for i=1,60 do pcall(function() BP.position=Tar.Position end) wait(0.25) end wait(0.5) Rocket:remove() end))
wait(1)
for i=1,20 do
wait(0.5)
if (Rocket.Position-BP.position).magnitude<7 then
local ex=Instance.new("Explosion")
ex.Hit:connect(function(v)
if v.Parent~=char and v.Parent~=char.Torso and v~=p and v.Parent.Name~="shipwreck77" and v.Parent.Name~="billiland" and v.Name~="Base" and v.Parent.Name~="TheEndOfDays" and v.Parent.Name~="ninja of death" then
coroutine.resume(coroutine.create(function() v.Transparency=0.3 v.BrickColor=BrickColor:Black() wait(math.random(0.5,9)) Rid(v) end))
end
end)
ex.BlastRadius=8
ex.BlastPressure=0
ex.Position=Rocket.Position
ex.Parent=workspace
wait()
Rocket:remove()
break
end
end
de=1
end
end

----------------------------------------------------

function Engulf(mouse)
if mouse.target~=workspace.Base then
moT=mouse.target
moH=mouse.Hit
Rid(moT)
end
end

-------------------------------------------------------------------------------------------------
function DarkLine(mouse)
if de==1 then
de=2
mo=mouse.Hit
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((char.torso.Position+mouse.Hit.p)/2,mouse.Hit.p)
Laz.Parent=workspace
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0.4
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
Me.Scale = Vector3.new(0.5,0.5,(char.Torso.Position - mouse.Hit.p).magnitude/2) 
Laz.CFrame=CFrame.new((char.torso.Position+mouse.Hit.p)/2,mouse.Hit.p)
Black(char)
wait(0.7)
for i=1,24 do
smoke=Instance.new("Smoke")
smoke.Size=6
smoke.Parent=char.Torso
smoke.Color=Color3.new(0,0,0)
wait(0.015)
end
Black(char)
wait(0.3)
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Transparency=1
end
end
BodyP=Instance.new("BodyPosition")
BodyP.position=mo.p+Vector3.new(0,3,0)
BodyP.maxForce=Vector3.new(70000,700000,70000)
BodyP.Parent=char.Torso
-------------
repeat wait(0.6) until (char.Torso.Position-BodyP.position).magnitude<12 
workspace.TheEndOfDays.Head.BrickColor=Head 
workspace.TheEndOfDays.Torso.BrickColor=Torso
workspace.TheEndOfDays["Right Arm"].BrickColor=RArm
workspace.TheEndOfDays["Left Arm"].BrickColor=LArm
workspace.TheEndOfDays["Right Leg"].BrickColor=RLeg
workspace.TheEndOfDays["Left Leg"].BrickColor=LLeg
Laz:remove()
for i=1,24 do
char.Torso.Smoke:remove()
wait(0.1)
end
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v.Reflectance=0
v.Transparency=0
end
end
BodyP:remove()
de=1
end
end
-------------------------------------------------------------------------------------------------

wep={MakeVoid,Engulf,Hammer,Ball,Nightmare,Teleport,Darken,Lazer,Doomed,Virus,Home,DarkLine}
name={"DarkVoid","BlackEngulf","DarkPulse","ShadowBall","Nightmare","ShadowBlitz","BlindingDarkness","ShadowCannon","ShadowTrigger","ShadowVirus","HomingShadow","TeleShadow"}
Mode=0

for _,v in pairs(wep) do
t=getfenv(0)
setfenv(v,t)
end


if script.Parent.className~="HopperBin" then
Hopper=Instance.new("HopperBin")
Hopper.Name="Press C"
Hopper.Parent=game.Players.TheEndOfDays.Backpack
script.Parent=Hopper
end
wait() 
Hopper=script.Parent



function CheckAdd()
if (Mode+1)~=(#wep+1) then
Mode=Mode+1
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode+1)==(#wep+1) then
Mode=1
Hopper.Name=name[Mode].."("..Mode..")"
end
end

function CheckSub()
if (Mode-1)==0 or (Mode-1)<0 then
Mode=#wep
Hopper.Name=name[Mode].."("..Mode..")"
elseif (Mode-1)~=0 then
Mode=Mode-1
Hopper.Name=name[Mode].."("..Mode..")"
end
end

function KeyDown(key)
if key=="c" then
CheckAdd()
elseif key=="x" then
Mode=1
Hopper.Name=name[1].."("..Mode..")"
elseif key=="z" then
CheckSub()
end
end

function Button1down(mouse)
bool,er=pcall(function() coroutine.resume(coroutine.create(function() wep[Mode](mouse) end)) end)
if not bool then
print(er)
end
end

function Mog(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() Button1down(mouse) end)
	mouse.KeyDown:connect(KeyDown)
end


Hopper.Selected:connect(Mog)



--[[
Error List:
1)makeGui([model]) wont work right
2)tags dont wokr =P
]]

--lego