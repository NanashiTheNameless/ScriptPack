--[[ 
This Script is created by: 

Fenrier: Everything 
xSoulStealerx: Model of the bot 

If you're gonna steal this, then please I ask you. Please don't forum,free model, give 
away, or anything like that to this script. Thank you very much :) 
]] 
Player = game:GetService("Players").luxulux
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
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
mode=1
color="Navy blue"
damage=15
canshoot=false
shooting1=false
shooting2=false
cframe=CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld=false
local main = Instance.new("Part")
local mod = Instance.new("Model",Character)
local pip2 = Instance.new("Part")
local pip1 = Instance.new("Part")
local mainp = Instance.new("Part")
local mainweld = Instance.new("Weld") 
local p1 = Instance.new("Part")
local p2 = Instance.new("Part")
local p3 = Instance.new("Part")
local p4 = Instance.new("Part")
local p5 = Instance.new("Part")
local p6 = Instance.new("Part")
local p7 = Instance.new("Part")
local p8 = Instance.new("Part")
local p9 = Instance.new("Seat")
p6.BrickColor=BrickColor.new("Black")
local Type=Instance.new("StringValue")
local CanShoot=Instance.new("BoolValue")
local MienMouse=Instance.new("ObjectValue")
MMouse = nil 
sitting=false
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 
--what anim 
anim = "none" 


if Player.PlayerGui:findFirstChild("Fen's GUI") ~= nil then
Player.PlayerGui:findFirstChild("Fen's GUI").Parent = nil
end

local fengui = Instance.new("GuiMain") 
fengui.Parent = Player.PlayerGui 
fengui.Name = "Fen's GUI" 
local fenframe = Instance.new("Frame") 
fenframe.Parent = fengui
fenframe.BackgroundColor3 = Color3.new(255,255,255) 
fenframe.BackgroundTransparency = 1 
fenframe.BorderColor3 = Color3.new(17,17,17) 
fenframe.Size = UDim2.new(0.0500000007, 0, 0.100000001, 0)
fenframe.Position = UDim2.new(0,0,0,0)
local fentext2 = Instance.new("TextLabel") 
fentext2.Parent = fenframe 
fentext2.Text = " " 
fentext2.BackgroundTransparency = 0 
fentext2.BackgroundColor3 = Color3.new(0,0,1) 
fentext2.SizeConstraint = "RelativeXY" 
fentext2.TextXAlignment = "Center" 
fentext2.TextYAlignment = "Center" 
fentext2.Position = UDim2.new(0,10,1,170)
fentext2.Size = UDim2.new(2.79999995,0,0.210000306,0)
local fentext3 = Instance.new("TextLabel") 
fentext3.Parent = fenframe 
fentext3.Text = "Shoot: "..tostring(canshoot).." | Mode: "..mode.."" 
fentext3.BackgroundTransparency = 0 
fentext3.BackgroundColor3 = Color3.new(1,1,1) 
fentext3.SizeConstraint = "RelativeXY" 
fentext3.TextXAlignment = "Center" 
fentext3.TextYAlignment = "Center" 
fentext3.Position = UDim2.new(0,10,1,170)
fentext3.Size = UDim2.new(400*0.007,0,0.400000006,0)

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part:BreakJoints()
end

function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

function findNearestTorso(pos)
	local list = game.Workspace:children()
	local torso = nil
	local dist = 50
	local temp = nil
	local human = nil
	local temp2 = nil
	for x = 1, #list do
		temp2 = list[x]
		if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "luxulux") then
			temp = temp2:findFirstChild("Torso")
			human = temp2:findFirstChild("Humanoid")
			if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
				if (temp.Position - pos).magnitude < dist then
					torso = temp
					dist = (temp.Position - pos).magnitude
				end
			end
		end
	end
	return torso
end

if Character:findFirstChild("Controller Model") ~= nil then
Character:findFirstChild("Controller Model").Parent = nil
end

CModel=Instance.new("Model")
CModel.Parent=Character
CModel.Name="Controller Model"

function makerob()
coroutine.resume(coroutine.create(function() 
	if Character:findFirstChild("Fen's Bot",true) ~= nil then 
	Character:findFirstChild("Fen's Bot",true).Parent = nil 
	end 
	mod.Parent=Character
	mod.Name = "Fen's Bot"
--	local main = Instance.new("Part")
	prop(main,mod,true,0,0,2.4,1.3,4,color,false,"Custom")
	main.Name = "MainPart"
	main.Position = Head.Position+Vector3.new(0,10,0)

	for i=-1, 1, 2 do
		local fir = Instance.new("Part")
		prop(fir,mod,true,0,0,1,1.8,1,"Black",false,"Custom")
		local wel = Instance.new("Weld")
		weld(wel,main,main,fir,(0.4+math.pi),0,i/2.5,i,1,-1.7)
		local fira = Instance.new("Fire",fir)
		fira.Color = Color3.new(0.1,1,0.1)
		fira.SecondaryColor = fira.Color
		fira.Size = 1
		fira.Heat = 25
	end
	for i=-1, 1, 2 do
		local fir = Instance.new("Part")
		prop(fir,mod,true,0,0,1,1.8,1,"Black",false,"Custom")
		local wel = Instance.new("Weld")
		weld(wel,main,main,fir,(-0.4+math.pi),0,i/2.5,i,1,1.7)
		local fira = Instance.new("Fire",fir)
		fira.Color = Color3.new(0.1,1,0.1)
		fira.SecondaryColor = fira.Color
		fira.Size = 1
		fira.Heat = 25
	end
		prop(pip2,mod,true,0,0,0.6,2,0.6,"Black",false,"Custom")
		local mes = Instance.new("SpecialMesh")
		mesh(mes,pip2,1,1,1,"Head")
		local we = Instance.new("Weld")
		weld(we,main,main,pip2,1.57,0,1.57,0.6,-0.3,2.2)
		prop(pip1,mod,true,0,0,0.6,2,0.6,"Black",false,"Custom")
		local mes = Instance.new("SpecialMesh")
		mesh(mes,pip1,1,1,1,"Head")
		local we = Instance.new("Weld")
		weld(we,main,main,pip1,1.57,0,1.57,-0.6,-0.3,2.2)
	local bal = Instance.new("Part")
	prop(bal,mod,true,0,0,2.2,1,3.6,"Black",false,"Custom")
	local mf = Instance.new("SpecialMesh")
	mesh(mf,bal,1,1,1,"Sphere")
	local weg = Instance.new("Weld")
	weld(weg,main,main,bal,0,0,0,0,-0.6,0)
	local pos = Instance.new("BodyPosition",main)
	pos.position = Torso.Position + Vector3.new(0,25,0)
	pos.maxForce = Vector3.new(7500,7500,7500)
	pos.Name = "BP"
	local bg = Instance.new("BodyGyro",main)
	bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
	bg.P = 50000
	bg.cframe = CFrame.new(main.Position, Torso.Position)
	bg.Name = "BG"
	while true do
		wait()
		if mode==1 then
			if workspace.luxulux.Torso then
				local target = findNearestTorso(Character.Torso.Position)
				if target~=nil then
					bg.cframe = CFrame.new(main.Position, target.Position)
					if canshoot==true then
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting1==false then
					shooting1=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip1,damage/2) 
					shooting1=false
					end
					end))
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting2==false then
					shooting2=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip2,damage*2) 
					shooting2=false
					end
					end))
					end
				else
					bg.cframe = CFrame.new(main.Position, Torso.Position)
				end
				local heh = math.random(1,35)
				if heh == 1 then
					pos.position = Torso.Position + Vector3.new(math.random(-24,24),math.random(5,25),math.random(-24,24))
				end
			end
		elseif mode==2 then
			if workspace.luxulux.Torso then
--					print(shooting)
					vel=main.Velocity.x
					if vel>=0.7 then
					vel=0.7
					end
					if vel<-0.7 then
					vel=-0.7
					end
					vel2=main.Velocity.z
					if vel2>=0.7 then
					vel2=0.7
					end
					if vel2<-0.7 then
					vel2=-0.7
					end
					p2.Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(-vel,0,vel2)
					LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5) 
					LW.C1 = CFrame.new(vel2/3, 0.5-vel/2, 0) * CFrame.fromEulerAnglesXYZ(0,0,-vel2/2) 
					if canshoot==true then
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting1==false then
					shooting1=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip1,damage/2) 
					shooting1=false
					end
					end))
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting2==false then
					shooting2=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip2,damage*2) 
					shooting2=false
					end
					end))
					end
				if MMouse.Hit.p~=nil then
					bg.cframe = CFrame.new(main.Position, MMouse.Hit.p)
				end
				local heh = math.random(1,35)
				if heh == 1 then
					if MMouse.Hit.p~=nil then
						pos.position = MMouse.Hit.p + Vector3.new(math.random(-24,24),math.random(5,25),math.random(-24,24))
					else
						pos.position = Torso.Position + Vector3.new(math.random(-24,24),math.random(5,25),math.random(-24,24))
					end
				end
			end
		elseif mode==3 then
			if workspace.luxulux.Torso then
				local target = findNearestTorso(Character.Torso.Position)
				if target~=nil then
					bg.cframe = CFrame.new(main.Position, target.Position)
--					print(shooting)
					if canshoot==true then
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting1==false then
					shooting1=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip1,damage/2) 
					shooting1=false
					end
					end))
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting2==false then
					shooting2=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip2,damage*2) 
					shooting2=false
					end
					end))
					end
				else
					bg.cframe = CFrame.new(main.Position, Torso.Position)
				end
				local heh = 1
				if heh == 1 then
					pos.position = Torso.Position + Vector3.new(0,20,0)
				end
			end
		elseif mode==4 then
			if workspace.luxulux.Torso then
					vel=main.Velocity.x
					if vel>=0.7 then
					vel=0.7
					end
					if vel<-0.7 then
					vel=-0.7
					end
					vel2=main.Velocity.z
					if vel2>=0.7 then
					vel2=0.7
					end
					if vel2<-0.7 then
					vel2=-0.7
					end
					p2.Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(-vel,0,vel2)
					LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5) 
					LW.C1 = CFrame.new(vel2/3, 0.5-vel/2, 0) * CFrame.fromEulerAnglesXYZ(0,0,-vel2/2) 
					if canshoot==true then
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting1==false then
					shooting1=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip1,damage/2) 
					shooting1=false
					end
					end))
					coroutine.resume(coroutine.create(function()
					if target~=nil and shooting2==false then
					shooting2=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip2,damage*2) 
					shooting2=false
					end
					end))
					end
				if MMouse.Hit.p~=nil then
					bg.cframe = CFrame.new(main.Position, MMouse.Hit.p)
				end
				local heh = 1
				if heh == 1 then
					pos.position = Torso.Position + Vector3.new(0,20,0)
				end
			end
		elseif mode==5 then
			if workspace.luxulux.Torso then
if sitting==false then
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
print(p9.Parent)
sitting=true
p9.formFactor = 1 
p9.CanCollide = false 
p9.Name = "Dat Seat" 
p9.Locked = true 
p9.Size = Vector3.new(2,1,2) 
p9.BrickColor=BrickColor.new("Navy blue")
p9.Parent = mod
p9.CFrame=main.CFrame
p9:BreakJoints()
local seatweld = Instance.new("Weld") 
seatweld.Parent = p9
seatweld.Part0 = p9 
seatweld.Part1 = main
seatweld.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, 0, 0) 
end
end))
end
					vel=main.Velocity.x
					if vel>=0.7 then
					vel=0.7
					end
					if vel<-0.7 then
					vel=-0.7
					end
					vel2=main.Velocity.z
					if vel2>=0.7 then
					vel2=0.7
					end
					if vel2<-0.7 then
					vel2=-0.7
					end
					p2.Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(-vel,0,vel2)
					LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5) 
					LW.C1 = CFrame.new(vel2/3, 0.5-vel/2, 0) * CFrame.fromEulerAnglesXYZ(0,0,-vel2/2) 
--					print(shooting)
					if canshoot==true then
					coroutine.resume(coroutine.create(function()
					if shooting1==false then
					shooting1=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip1,25) 
					shooting1=false
					end
					end))
					coroutine.resume(coroutine.create(function()
					if shooting2==false then
					shooting2=true
					wait(math.random())
					fire1(0.3)
					shoottrail2(pip2,15) 
					shooting2=false
					end
					end))
					end
				if MMouse.Hit.p~=nil then
					bg.cframe = CFrame.new(main.Position, MMouse.Hit.p+Vector3.new(0,4,0))
				end
				local heh = 1
				if heh == 1 then
					if MMouse.Hit.p~=nil then
						pos.position = MMouse.Hit.p + Vector3.new(0,4,0)
					end
				end
			end
		end
	end
end))
end
makerob()

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "AI Bot" 
script.Parent = Tool 
end 
Bin = script.Parent 

function shoottrail2(pos1,Damage) 
coroutine.resume(coroutine.create(function()
spread2 = 0 
range2 = 1000
rangepower = 5
local spreadvector = (Vector3.new(math.random(-spread2,spread2),math.random(-spread2,spread2),math.random(-spread2,spread2)) / 100) --* (pos1.Position).magnitude/100
--local dir = Head.CFrame.lookVector+spreadvector 
local dir = main.CFrame.lookVector+spreadvector
local ammount = 100
local hit2,pos = rayCast(pos1.Position,dir,10,mod)
local rangepos = range2
local function drawtrail(From,To)
local effectsmsh = Instance.new("SpecialMesh")
local Damg = Damage*2
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.MeshType="Sphere"
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
local spar=Instance.new("Sparkles")
spar.Parent=effectsg
spar.SparkleColor=Color3.new(0, 0, 102)
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(1,0.4,1)
effectsg.Parent = mod
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Cyan") 
effectsg.Reflectance = 0.25
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(1,mg*5,1)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
wait(0.1)
spar.Enabled=false
Smok.Enabled=false
end))
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.2 do
wait()
--effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(1-1*i,mg*5,1-1*i)
end 
effectsg.Transparency = 1
wait() 
effectsg.Parent = nil 
end))
end
local newpos = pos1.Position
local inc = rangepower
local Damg = Damage*2
local decr = 0
repeat
wait() 
rangepos = rangepos - 10
dir = dir
--dir = dir 
--print(Damg)
hit2,pos = rayCast(newpos,dir,inc,mod)
drawtrail(newpos,pos)
newpos = newpos + (dir * inc)
if alt==1 then 
inc = 10 
if inc >= 20 then
inc = inc - 10
end
end 
if hit2 ~= nil then
rangepos = 0
end
until rangepos <= 0
EVENMOARMAGIX2(CFrame.new(newpos),2,2,2,0,0,0,0,0,0,BrickColor.new("Cyan")) 
if hit2 ~= nil then
local effectsmsh = Instance.new("SpecialMesh")
effectsmsh.MeshId = "http://www.roblox.com/asset/?id=15887356"
--effectsmsh.Scale = Vector3.new(1,1,2.5)
effectsmsh.Scale = Vector3.new(3,3,3)
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Arrow"
effectsg.Locked = true
effectsg.Transparency = 1 
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = mod
effectsg.BrickColor = BrickColor.new("Cyan") 
effectsmsh.Parent = effectsg
effectsg.CFrame = CFrame.new(newpos,pos) + CFrame.new(newpos,pos).lookVector*2.5*2
coroutine.resume(coroutine.create(function()
wait()
effectsg.Parent = nil 
end))
local efwel = Instance.new("Weld") 
efwel.Parent = effectsg 
efwel.Part0 = effectsg 
efwel.Part1 = hit2 
efwel.Parent = nil 
effectsg.Anchored = true 
local HitPos = effectsg.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = pppart.Position + CFrame.new(newpos,pos).lookVector*0.75
--local HitPos = pppart.Position + (prt1.CFrame.lookVector * .5) 
local CJ = CFrame.new(HitPos) 
local C0 = effectsg.CFrame:inverse() * CJ
local C1 = hit2.CFrame:inverse() * CJ 
--efwel.C0 = C0
--efwel.C1 = C1
--efwel.Parent = effectsg 
if hit2.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg/4),5)
elseif hit2.Parent.Parent ~= nil and hit2.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
hum = hit2.Parent.Parent.Humanoid
attackdebounce=false
Damagefunc1(hit2,math.floor(Damg/4),5)
end
end
end))
end

function rayCast(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , Ignore Descendants
return game.Workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end 

function MMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(1,1,1) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame = CFrame.new(Part.Position-Vector3.new(0,0.3,0))*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function UltimaMMMAGIC(part,x1,y1,z1,x2,y2,z2,color) 
	local msh1 = Instance.new("BlockMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function MOREMAGIX(part,cframe,x,y,z,color) 
		p2=Instance.new("Part")
		p2.Name="Blast"
		p2.TopSurface=0
		p2.BottomSurface=0
		p2.CanCollide=false
		p2.Anchored=true
		p2.BrickColor=color
		p2.Size=Vector3.new(x,y,z)
		p2.formFactor="Symmetric"
		p2.CFrame=part.CFrame*CFrame.new(0,cframe,0)
		p2.Parent=workspace
		m=Instance.new("BlockMesh")
		m.Parent=p2
		m.Name="BlastMesh"
		coroutine.resume(coroutine.create(function(part,dir) for loll=1, 15 do part.BlastMesh.Scale=part.BlastMesh.Scale-Vector3.new(.09,.09,.09) part.Transparency=loll/20 part.CFrame=part.CFrame*CFrame.new(dir)*CFrame.fromEulerAnglesXYZ(math.random(-100,100)/100, math.random(-100,100)/100, math.random(-100,100)/100) wait() end part.Parent=nil end),p2,Vector3.new(math.random(-10,10)/10,math.random(-10,10)/10,math.random(-10,10)/10))
end 

function EVENMOARMAGIX(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	if Style == "WingBlade" and element == "Dark" then 
	S.BrickColor=BrickColor.new("Black") 
	end 
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function WaveEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=20329976" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function BlastEffect(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(x1,y1,z1) 
	msh1.MeshId = "http://www.roblox.com/asset/?id=1323306" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(1,1,1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part.CFrame*CFrame.new(x2,y2,z2)*CFrame.fromEulerAnglesXYZ(x3,y3,z3)
	S.Parent=Character
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.15,0.3,0.15) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function EVENMOARMAGIX2(part,x1,y1,z1,x2,y2,z2,x3,y3,z3,color) 
	local msh1 = Instance.new("SpecialMesh") 
	msh1.Scale = Vector3.new(0.5,0.5,0.5) 
	msh1.MeshType = "Sphere" 
	S=Instance.new("Part")
	S.Name="Effect"
	S.formFactor=0
	S.Size=Vector3.new(x1,y1,z1)
	S.BrickColor=color
	S.Reflectance = 0
	S.TopSurface=0
	S.BottomSurface=0
	S.Transparency=0
	S.Anchored=true
	S.CanCollide=false
	S.CFrame=part
	S.Parent=workspace
	msh1.Parent = S
	coroutine.resume(coroutine.create(function(Part,CF) for i=1, 5 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.3,0.3,0.3) Part.Transparency=Part.Transparency+0.15 wait() end Part.Parent=nil end),S,S.CFrame)
end 

function ss(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav" 
SlashSound.Parent = main

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function critsound(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2801263" 
SlashSound.Parent = main

SlashSound.Volume = .4 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function charge(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2101137" 
SlashSound.Parent = main

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function bewm(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2248511" 
SlashSound.Parent = main

SlashSound.Volume = .7 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function abscond(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2767090" 
SlashSound.Parent = main
game:service'Lighing'["Lolsound"].Value=SlashSound
SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function distort(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2974249" 
SlashSound.Parent = main

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function thwack(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=46153268" 
SlashSound.Parent = main

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fire1(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697431" 
SlashSound.Parent = main

SlashSound.Volume = 1
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function fire2(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=48618802 " 
SlashSound.Parent = main

SlashSound.Volume = 1
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function grip(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "rbxasset://sounds/swordslash.wav" 
SlashSound.Parent = main

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 
function reload(pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=2697295" 
SlashSound.Parent = main

SlashSound.Volume = 1 
SlashSound.Pitch = pitch 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait(1) 
SlashSound.Parent = nil 
end)) 
end 

Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso]]
			critsound(2) 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
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
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

hold = false 

function ob1d(mouse) 
if attack == true then return end 
if mouse.Target.Parent:findFirstChild("Humanoid")~=nil then
player = Player 
ch = Character 
RW = ch.Torso["Right Shoulder"] 
LW = ch.Torso["Left Shoulder"] 
coroutine.resume(coroutine.create(function() 
DerpRainEffect(mouse.Target)
end)) 
hold = true 
--[[RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso ]]
RW.C0 = CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0) 
LW.C0 = CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0) 
end 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function Key(key,mouse) 
if key == "q" then 
for i=0,1,0.1 do
wait()
LW.C0 = CFrame.new(-1.5+0.3-0.1*i,0.5,-0.3+0.1*i) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5+0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.2 do
wait()
p5.Mesh.Scale = Vector3.new(0.3,0.3-0.09*i,0.3) 
LW.C0 = CFrame.new(-1.5+0.3-0.1,0.5,-0.3+0.1) * CFrame.fromEulerAnglesXYZ(1.5-0.2*i,0,0.5+0.4+0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
if canshoot==false then
canshoot=true
p6.BrickColor=BrickColor.new("New Yeller")
else
canshoot=false
p6.BrickColor=BrickColor.new("Black")
end
for i=0,1,0.2 do
wait()
p5.Mesh.Scale = Vector3.new(0.3,0.3-0.09+0.09*i,0.3) 
LW.C0 = CFrame.new(-1.5+0.3-0.1,0.5,-0.3+0.1) * CFrame.fromEulerAnglesXYZ(1.5-0.2+0.2*i,0,0.5+0.4+0.1-0.1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
LW.C0 = CFrame.new(-1.5+0.3-0.1+0.1*i,0.5,-0.3+0.1-0.1*i) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5+0.4-0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 
if key=="e" then
sitting=false
p9.Parent=nil
p2.Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i=0,1,0.1 do
wait()
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.1*i,0,0)
LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3-0.6*i) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5-0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.2 do
wait()
p8.Mesh.Scale = Vector3.new(0.3,0.3-0.09*i,0.3) 
LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3-0.6) * CFrame.fromEulerAnglesXYZ(1.5-0.2*i,0,0.5-0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
if mode==1 then
mode=2
elseif mode==2 then
mode=3
elseif mode==3 then
mode=4
elseif mode==4 then
mode=5
elseif mode==5 then
mode=1
end
for i=0,1,0.2 do
wait()
p2.Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
p8.Mesh.Scale = Vector3.new(0.3,0.3-0.09+0.09*i,0.3) 
LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3-0.6) * CFrame.fromEulerAnglesXYZ(1.5-0.2+0.2*i,0,0.5-0.4) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
p2.Weld.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.1+0.1*i,0,0)
LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3-0.6+0.6*i) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5-0.4+0.4*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
sitting=false
p9.Parent=nil
end
end 

function Key2(key,mouse) 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key,mouse) end) 
mouse.KeyUp:connect(function(key) Key2(key,mouse) end) 
MMouse = mouse 
--mouse.KeyDown:connect(key,mouse) 
--mouse.KeyUp:connect(key2,mouse) 
MienMouse.Parent=mod
MienMouse.Value=MMouse
MienMouse.Name="MouseValue"
equipped = true 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
for i=0,1,0.1 do
wait()
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0.3*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5*i,0.5,0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
CModel.Parent=Character
--local mainp = Instance.new("Part") 
mainp.formFactor = 1 
mainp.CanCollide = false 
mainp.Name = "MainPart" 
mainp.Locked = true 
mainp.Size = Vector3.new(2,1,2) 
mainp.BrickColor=BrickColor.new(color)
mainp.Parent = CModel
local mainmesh = Instance.new("BlockMesh") 
mainmesh.Parent = mainp 
mainmesh.Scale = Vector3.new(1,0.5,1) 
--local mainweld = Instance.new("Weld") 
mainweld.Parent = mainp 
mainweld.Part0 = mainp 
mainweld.Part1 = RightArm 
mainweld.C0 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0, 1.9, 0) 
--local p1 = Instance.new("Part") 
p1.formFactor = 1 
p1.CanCollide = false 
p1.Name = "Part1" 
p1.Locked = true 
p1.Size = Vector3.new(1,1,1) 
p1.BrickColor=BrickColor.new(color)
p1.Parent = CModel
local m1 = Instance.new("SpecialMesh") 
m1.Parent = p1
m1.MeshType="Sphere"
m1.Scale = Vector3.new(1.2,0.5,1.2) 
local w1 = Instance.new("Weld") 
w1.Parent = p1
w1.Part0 = p1 
w1.Part1 = mainp 
w1.C0 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0, -0.2, 0) 
--local p2 = Instance.new("Part") 
p2.formFactor = 1 
p2.CanCollide = false 
p2.Name = "Part2" 
p2.Locked = true 
p2.Size = Vector3.new(1,1,1) 
p2.BrickColor=BrickColor.new("Black")
p2.Parent = CModel
local m2 = Instance.new("CylinderMesh") 
m2.Parent = p2
m2.Scale = Vector3.new(0.3,1,0.3) 
local w2 = Instance.new("Weld") 
w2.Parent = p2
w2.Part0 = p2 
w2.Part1 = p1
w2.C0 = CFrame.new(0, -0.8, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
--local p3 = Instance.new("Part") 
p3.formFactor = 1 
p3.CanCollide = false 
p3.Name = "Part3" 
p3.Locked = true 
p3.Size = Vector3.new(1,1,1) 
p3.BrickColor=BrickColor.new("Really black")
p3.Parent = CModel
local m3 = Instance.new("SpecialMesh") 
m3.Parent = p3
m3.MeshType="Sphere"
m3.Scale = Vector3.new(0.5,0.5,0.5) 
local w3 = Instance.new("Weld") 
w3.Parent = p3
w3.Part0 = p3
w3.Part1 = p2
w3.C0 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
--local p4 = Instance.new("Part") 
p4.formFactor = 1 
p4.CanCollide = false 
p4.Name = "Part4" 
p4.Locked = true 
p4.Size = Vector3.new(1,1,1) 
p4.BrickColor=BrickColor.new("Black")
p4.Parent = CModel
local m4 = Instance.new("CylinderMesh") 
m4.Parent = p4
m4.Scale = Vector3.new(0.4,0.2,0.4) 
local w4 = Instance.new("Weld") 
w4.Parent = p4
w4.Part0 = p4
w4.Part1 = p1
w4.C0 = CFrame.new(-0.1, 0, -0.8) * CFrame.fromEulerAnglesXYZ(0,0,0)
--local p5 = Instance.new("Part") 
p5.formFactor = 1 
p5.CanCollide = false 
p5.Name = "Part5" 
p5.Locked = true 
p5.Size = Vector3.new(1,1,1) 
p5.BrickColor=BrickColor.new("Bright red")
p5.Parent = CModel
local m5 = Instance.new("CylinderMesh") 
m5.Parent = p5
m5.Scale = Vector3.new(0.3,0.3,0.3) 
local w5 = Instance.new("Weld") 
w5.Parent = p5
w5.Part0 = p5
w5.Part1 = p4
w5.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
--local p6 = Instance.new("Part") 
p6.formFactor = 1 
p6.CanCollide = false 
p6.Name = "Part6" 
p6.Locked = true 
p6.Size = Vector3.new(1,1,1) 
p6.Parent = CModel
local m6 = Instance.new("SpecialMesh") 
m6.Parent = p6
m6.MeshType="Sphere"
m6.Scale = Vector3.new(0.3,0.4,0.3) 
local w6 = Instance.new("Weld") 
w6.Parent = p6
w6.Part0 = p6
w6.Part1 = p1
w6.C0 = CFrame.new(-0.8, 0, 0.8) * CFrame.fromEulerAnglesXYZ(0,0,0)
--local p7 = Instance.new("Part") 
p7.formFactor = 1 
p7.CanCollide = false 
p7.Name = "Part7" 
p7.Locked = true 
p7.Size = Vector3.new(1,1,1) 
p7.BrickColor=BrickColor.new("Black")
p7.Parent = CModel
local m7 = Instance.new("CylinderMesh") 
m7.Parent = p7
m7.Scale = Vector3.new(0.4,0.2,0.4) 
local w7 = Instance.new("Weld") 
w7.Parent = p7
w7.Part0 = p7
w7.Part1 = p1
w7.C0 = CFrame.new(0.8, 0, 0.8) * CFrame.fromEulerAnglesXYZ(0,0,0)
--local p8 = Instance.new("Part") 
p8.formFactor = 1 
p8.CanCollide = false 
p8.Name = "Part8" 
p8.Locked = true 
p8.Size = Vector3.new(1,1,1) 
p8.BrickColor=BrickColor.new("Bright red")
p8.Parent = CModel
local m8 = Instance.new("CylinderMesh") 
m8.Parent = p8
m8.Scale = Vector3.new(0.3,0.3,0.3) 
local w8 = Instance.new("Weld") 
w8.Parent = p8
w8.Part0 = p8
w8.Part1 = p7
w8.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i=0,1,0.1 do
wait()
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i,3.14,0.3-0.3*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,0,-0.5+0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
for i=0,1,0.1 do
wait()
mainweld.C0 = CFrame.fromEulerAnglesXYZ(1.57-0.57*i,0,-0.5*i) * CFrame.new(0.5*i, 1.9-0.3*i, 0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3*i,0,0)
LW.C0 = CFrame.new(-1.5+0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1.5*i,0,0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3*i,0.5,-0.3*i) * CFrame.fromEulerAnglesXYZ(1*i,0,-0.5*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
end 

function ds(mouse) 
for i=0,1,0.1 do
wait()
mainweld.C0 = CFrame.fromEulerAnglesXYZ(1.57-0.57,0,-0.5) * CFrame.new(0.5, 1.9-0.3, 0) 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0.3-0.3*i,0,0)
LW.C0 = CFrame.new(-1.5+0.3,0.5,-0.3) * CFrame.fromEulerAnglesXYZ(1.5,0,0.5) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3,0.5,-0.3) * CFrame.fromEulerAnglesXYZ(1,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
wait(0.3)
for i=0,1,0.1 do
wait()
mainweld.C0 = CFrame.fromEulerAnglesXYZ(1.57-0.57+0.57*i,0,-0.5+0.5*i) * CFrame.new(0.5-0.5*i, 1.9-0.3+0.3*i, 0) 
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3*i,3.14,0.3*i) * CFrame.new(0,0,-0.5) 
LW.C0 = CFrame.new(-1.5+0.3-0.3*i,0.5,-0.3+0.3*i) * CFrame.fromEulerAnglesXYZ(1.5-1.5*i,0,0.5-0.5*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5-0.3-0.2*i,0.5,-0.3+0.8*i) * CFrame.fromEulerAnglesXYZ(1-1.3*i,0,-0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end
CModel.Parent=nil
mainp.Parent=nil
p1.Parent=nil
p2.Parent=nil
for i=0,1,0.1 do
wait()
Torso.Neck.C1 = CFrame.fromEulerAnglesXYZ(1.57+0.3-0.3*i*i,3.14,0.3-0.3*i*i) * CFrame.new(0,0,-0.5) 
RW.C0 = CFrame.new(1.5-0.5+0.5*i,0.5,0.5-0.5*i) * CFrame.fromEulerAnglesXYZ(-0.3+0.3*i,0,-0.5+0.5*i) 
end
equipped = false 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
Torso.Neck.C0=necko*CFrame.fromEulerAnglesXYZ(0,0,0)
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 

while true do 
wait(0)  
fentext3.Text = "Shoot: "..tostring(canshoot).." | Mode: "..mode.."" 
end 

-- lego This acts as a chat filter. Don't ask why I do it. I just do >.> 
--[[ 
Copyrighted (C) Fenrier 2011 
This script is copyrighted for Fenrier. Any use of this script is breaking 
this copyright. 
All Rights Reserved. 
]] 
-- mediafire