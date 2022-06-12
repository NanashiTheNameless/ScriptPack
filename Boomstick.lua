
--Converted with ttyyuu12345's model to script plugin v4
function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
Tool0 = Instance.new("Tool")
Part1 = Instance.new("Part")
CylinderMesh2 = Instance.new("CylinderMesh")
Sound3 = Instance.new("Sound")
Sound4 = Instance.new("Sound")
Sound5 = Instance.new("Sound")
Sound6 = Instance.new("Sound")
Sound7 = Instance.new("Sound")
StringValue8 = Instance.new("StringValue")
Script9 = Instance.new("Script")
StringValue10 = Instance.new("StringValue")
Part11 = Instance.new("Part")
CylinderMesh12 = Instance.new("CylinderMesh")
StringValue13 = Instance.new("StringValue")
Part14 = Instance.new("Part")
CylinderMesh15 = Instance.new("CylinderMesh")
StringValue16 = Instance.new("StringValue")
Part17 = Instance.new("Part")
CylinderMesh18 = Instance.new("CylinderMesh")
StringValue19 = Instance.new("StringValue")
Part20 = Instance.new("Part")
CylinderMesh21 = Instance.new("CylinderMesh")
StringValue22 = Instance.new("StringValue")
Part23 = Instance.new("Part")
CylinderMesh24 = Instance.new("CylinderMesh")
BoolValue25 = Instance.new("BoolValue")
Script26 = Instance.new("Script")
Script27 = Instance.new("Script")
Script28 = Instance.new("Script")
ObjectValue29 = Instance.new("ObjectValue")
ObjectValue30 = Instance.new("ObjectValue")
LocalScript31 = Instance.new("LocalScript")
StringValue32 = Instance.new("StringValue")
Part33 = Instance.new("Part")
CylinderMesh34 = Instance.new("CylinderMesh")
StringValue35 = Instance.new("StringValue")
Part36 = Instance.new("Part")
CylinderMesh37 = Instance.new("CylinderMesh")
StringValue38 = Instance.new("StringValue")
Part39 = Instance.new("Part")
CylinderMesh40 = Instance.new("CylinderMesh")
StringValue41 = Instance.new("StringValue")
Part42 = Instance.new("Part")
CylinderMesh43 = Instance.new("CylinderMesh")
StringValue44 = Instance.new("StringValue")
Part45 = Instance.new("Part")
CylinderMesh46 = Instance.new("CylinderMesh")
Decal47 = Instance.new("Decal")
StringValue48 = Instance.new("StringValue")
Tool0.Name = "Boomstick"
Tool0.Parent = mas
Part1.Name = "Handle"
Part1.Parent = Tool0
Part1.BrickColor = BrickColor.new("Black")
Part1.Reflectance = 0.125
Part1.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part1.FormFactor = Enum.FormFactor.Symmetric
Part1.Size = Vector3.new(1, 1, 1)
Part1.CFrame = CFrame.new(668.600281, 270.915436, 123.640839, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
Part1.Position = Vector3.new(668.600281, 270.915436, 123.640839)
Part1.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part1.Color = Color3.new(0.105882, 0.164706, 0.207843)
CylinderMesh2.Parent = Part1
CylinderMesh2.Scale = Vector3.new(0.349999994, 0.75, 0.349999994)
CylinderMesh2.Scale = Vector3.new(0.349999994, 0.75, 0.349999994)
Sound3.Name = "WindSound"
Sound3.Parent = Part1
Sound3.Pitch = 0
Sound3.SoundId = "http://www.roblox.com/asset/?id=18435238"
Sound3.Volume = 0
Sound4.Name = "Swing"
Sound4.Parent = Part1
Sound4.Pitch = 1.0599999427795
Sound4.SoundId = "http://roblox.com/asset/?id=10209645"
Sound4.Volume = 1
Sound5.Name = "Bonk2"
Sound5.Parent = Part1
Sound5.Pitch = 0.55000001192093
Sound5.SoundId = "http://roblox.com/asset/?id=10209596"
Sound5.PlayOnRemove = true
Sound6.Name = "Kill"
Sound6.Parent = Part1
Sound6.Pitch = 0.69999998807907
Sound6.SoundId = "http://www.roblox.com/asset/?id=2801263"
Sound6.Volume = 0.75
Sound7.Name = "Bonk"
Sound7.Parent = Part1
Sound7.Pitch = 0.9200000166893
Sound7.SoundId = "http://www.roblox.com/asset/?id=24346281"
Sound7.Volume = 1
StringValue8.Name = "Te"
StringValue8.Parent = Part1
Script9.Parent = Tool0
table.insert(cors,sandbox(Script9,function()
wait()
--turdulator
--KA-BEWWWWWWWWMM
--Explodes on contact with a surface while swinging.

--Causes extreme damage to anything around you.
--Allowed to view/edit this: All close friends, Hackerstopper22, Fenrier, AccountMoniter (Need I remind him that he'd better not breach our agreements. Furthermore, JOYN UZ LOLOLOL. U must become kredit to team by being part of team!)
--Anyone else reading this, go die.

--Oh, I almost forgot.00

--Note: When charging, added lol factor for the force of the blast.

--Side Note: This is the most I've ever written for such a simple little side tool.

--In case you were wondering, this is based off of a TF2 thing lolo.

--This script is also the weld script, as well as the main script.
--I'm working on never using Local script ever again.
--ever. Unless it's local/camera based, derp.

--MOARNOTE.....
--Just kidding








--noteroll

GetShoulder=function()
	Char=Tool.Parent
	Torso=Char.Torso
	return Torso:FindFirstChild("Right Shoulder",nil)
end
GetGrip=function()
	Char=Tool.Parent
	Arm=Char["Right Arm"]
	return Arm:FindFirstChild("RightGrip",nil)
end

Tool=script.Parent; --idk why I pootis the ';', is just old noob habit.
Handle=Tool.Handle
Handle2=Tool.Handle2
Handle3=Tool.Handle3
Handle4=Tool.Handle4
Handle5=Tool.Handle5
Handle6=Tool.Handle6
Handle7=Tool.Handle7
Handle8=Tool.Handle8
Handle9=Tool.Handle9
Handle10=Tool.Handle10
Handle11=Tool.Handle11
doWeld=function()
	for _,v in pairs(Handle:children()) do
		if v.className=="Weld" then
			v:Remove()
		end
	end
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle2
	w.C0=CFrame.new(0,-.35,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle3
	w.C0=CFrame.new(0,-.5,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle4
	w.C0=CFrame.new(0,-.585,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle5
	w.C0=CFrame.new(0,-.65,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle6
	w.C0=CFrame.new(0,.8,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle7
	w.C0=CFrame.new(0,.9,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle8
	w.C0=CFrame.new(0,1.1325,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle9
	w.C0=CFrame.new(0,1.175,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle10
	w.C0=CFrame.new(0,1.235,0)
	w.Parent=Handle
	w=Instance.new("Weld")
	w.Part0=Handle
	w.Part1=Handle11
	w.C0=CFrame.new(0,1.6,0)
	w.Parent=Handle
end
Tool.AncestryChanged:connect(doWeld)
wait(.25)
pos=1
doRoll=true
chance=0
mdmg=0
charge=100
sound=nil
Tool=script.Parent
ArmOri=CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
NormSlash=function()
	Shoulder=GetShoulder()
	Grip=GetGrip()
	if Shoulder==nil or Grip==nil then
		error("Could not find appropriate limbs.")
		return
	end
	Tool.Handle.Swing.Pitch=math.random(100,110)/100
	for i=1, 4 do
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/8)
		wait()
	end
	Tool.Handle6.Balete.Value=true
	Tool.Handle.Swing:Play()
	for i=1, 3 do
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4.25)
		wait()
	end
	for i=1, 3 do
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/4.25)
		wait()
	end
	if Tool:FindFirstChild("Handle6")~=nil then
	Tool.Handle6.Balete.Value=false
	end
	for i=1, 4 do
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/8)
		wait()
	end
	Shoulder.C0=ArmOri
end
CritSound=function()
	Char=Tool.Parent
	c=Instance.new("Sound")
	c.SoundId="http://roblox.com/asset/?id=10209481"
	c.Volume=.3
	c.Pitch=1.15
	c.Parent=Char.Torso
	c:Play()
	game:GetService("Debris"):AddItem(c,.5)
end
CritSlash=function()
	Shoulder=GetShoulder()
	Grip=GetGrip()
	if Shoulder==nil or Grip==nil then
		error("Could not find appropriate limbs.")
		return
	end
	ori=Grip.C0
	Tool.Handle.Swing:Play()
	Tool.Handle.Swing.Pitch=math.random(100,110)/100
	wait(.1)
	Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)+Vector3.new(.25,-.5,0)
	Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/10)
	CritSound()
	for i=1, 4 do
		Grip.C0=Grip.C0*CFrame.fromEulerAnglesXYZ(-math.pi/16,0,0)
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/10)
		wait()
	end
	Tool.Handle6.Balete.Value=true
	for i=1, 4 do
		Grip.C0=Grip.C0*CFrame.fromEulerAnglesXYZ(-math.pi/16,0,0)
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,-math.pi/10)
		wait()
	end
	wait(.15)
	for i=1, 4 do
		Grip.C0=Grip.C0*CFrame.fromEulerAnglesXYZ(math.pi/14,0,0)
		Shoulder.C0=Shoulder.C0*CFrame.fromEulerAnglesXYZ(0,0,math.pi/29)
		wait()
	end
	if Tool:FindFirstChild("Handle6")~=nil then
	Tool.Handle6.Balete.Value=false
	end
	wait()
	Grip.C0=ori
	Shoulder.C0=ArmOri
end
Animation=function(T,C)
	if C=="Stop" then
		RightS=T:FindFirstChild("Right Shoulder")
		if RightS==nil then
			return
		end
		LeftS=T:FindFirstChild("Left Shoulder")
		if LeftS==nil then
			return
		end
	elseif C=="Resume" then
	end
end
DEB=true
d=true
critchance=85
DoSpin=false
normgrip=nil
Punch=function()
	if d==false or Tool.Enabled==false then return end
	d=false
	Char=Tool.Parent
	if doRoll==true then
	if math.random(1,100)<critchance then
		DoSpin=false
		NormSlash()
	else
		Crit=true
		print("Crit!")
		DoSpin=false
		CritSlash()
		Crit=false
	end
	else
	if charge>33 then
	doRoll=false
	if math.random(0,charge-34)~=1 then
		DoSpin=false
		NormSlash()
	else
		Crit=true
		print("Crit!")
		DoSpin=false
		CritSlash()
		Crit=false
	end
	else
		Crit=true
		print("Crit!")
		DoSpin=false
		CritSlash()
		Crit=false
	end
	end
	wait(.15)
	d=true
end
Tool.Activated:connect(Punch)
	

end))
StringValue10.Name = "Te"
StringValue10.Parent = Script9
Part11.Name = "Handle2"
Part11.Parent = Tool0
Part11.BrickColor = BrickColor.new("Brown")
Part11.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part11.FormFactor = Enum.FormFactor.Symmetric
Part11.Size = Vector3.new(1, 1, 1)
Part11.CFrame = CFrame.new(668.695557, 271.252167, 123.647102, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part11.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part11.Position = Vector3.new(668.695557, 271.252167, 123.647102)
Part11.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part11.Color = Color3.new(0.486275, 0.360784, 0.27451)
CylinderMesh12.Parent = Part11
CylinderMesh12.Scale = Vector3.new(0.340000004, 0.150000006, 0.340000004)
CylinderMesh12.Scale = Vector3.new(0.340000004, 0.150000006, 0.340000004)
StringValue13.Name = "Te"
StringValue13.Parent = Part11
Part14.Name = "Handle3"
Part14.Parent = Tool0
Part14.BrickColor = BrickColor.new("Dark stone grey")
Part14.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part14.FormFactor = Enum.FormFactor.Symmetric
Part14.Size = Vector3.new(1, 1, 1)
Part14.CFrame = CFrame.new(668.736389, 271.396484, 123.649796, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part14.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part14.Position = Vector3.new(668.736389, 271.396484, 123.649796)
Part14.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part14.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh15.Parent = Part14
CylinderMesh15.Scale = Vector3.new(0.425000012, 0.150000006, 0.425000012)
CylinderMesh15.Scale = Vector3.new(0.425000012, 0.150000006, 0.425000012)
StringValue16.Name = "Te"
StringValue16.Parent = Part14
Part17.Name = "Handle4"
Part17.Parent = Tool0
Part17.BrickColor = BrickColor.new("Dark stone grey")
Part17.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part17.FormFactor = Enum.FormFactor.Symmetric
Part17.Size = Vector3.new(1, 1, 1)
Part17.CFrame = CFrame.new(668.759521, 271.478241, 123.651314, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part17.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part17.Position = Vector3.new(668.759521, 271.478241, 123.651314)
Part17.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part17.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh18.Parent = Part17
CylinderMesh18.Scale = Vector3.new(0.349999994, 0.0500000007, 0.349999994)
CylinderMesh18.Scale = Vector3.new(0.349999994, 0.0500000007, 0.349999994)
StringValue19.Name = "Te"
StringValue19.Parent = Part17
Part20.Name = "Handle5"
Part20.Parent = Tool0
Part20.BrickColor = BrickColor.new("Dark stone grey")
Part20.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part20.FormFactor = Enum.FormFactor.Symmetric
Part20.Size = Vector3.new(1, 1, 1)
Part20.CFrame = CFrame.new(668.777161, 271.540802, 123.652481, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part20.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part20.Position = Vector3.new(668.777161, 271.540802, 123.652481)
Part20.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part20.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh21.Parent = Part20
CylinderMesh21.Scale = Vector3.new(0.389999986, 0.0799999982, 0.389999986)
CylinderMesh21.Scale = Vector3.new(0.389999986, 0.0799999982, 0.389999986)
StringValue22.Name = "Te"
StringValue22.Parent = Part20
Part23.Name = "Handle6"
Part23.Parent = Tool0
Part23.BrickColor = BrickColor.new("Brown")
Part23.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part23.FormFactor = Enum.FormFactor.Symmetric
Part23.Size = Vector3.new(1, 3, 1)
Part23.CFrame = CFrame.new(668.382568, 270.145782, 123.626511, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part23.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part23.Position = Vector3.new(668.382568, 270.145782, 123.626511)
Part23.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part23.Color = Color3.new(0.486275, 0.360784, 0.27451)
CylinderMesh24.Parent = Part23
CylinderMesh24.Offset = Vector3.new(0, -0.25, 0)
CylinderMesh24.Scale = Vector3.new(0.340000004, 0.125, 0.340000004)
CylinderMesh24.Scale = Vector3.new(0.340000004, 0.125, 0.340000004)
BoolValue25.Name = "Balete"
BoolValue25.Parent = Part23
Script26.Parent = Part23
table.insert(cors,sandbox(Script26,function()
wait()
win=function()
for i=1, math.random(2,3)+3 do
	p=Instance.new("Part")
	p.Name="FireBit"
	p.Transparency=1
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=true
	p.formFactor="Symmetric"
	p.Size=Vector3.new(1,1,1)
	p.CFrame=script.Parent.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,10)/10,math.random(20,30)/10,math.random(10,50)/10)
	p.Velocity=Vector3.new(math.random(-8,8)*3,math.random(20,50),math.random(-8,8)*3)*2
	p.RotVelocity=p.Velocity
	p.Parent=workspace
	f=Instance.new("Fire")
	f.Parent=p
	f.Size=math.random(2,3)
	f.Heat=math.random(6,15)
	g=Instance.new("BodyGyro")
	g.Parent=p
	v=Instance.new("BodyVelocity")
	v.P=5000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Vector3.new(math.random(-8,8)*2.5,math.random(3,6),math.random(-8,8)*2.5)/1.25
	v.Parent=p
	game:GetService("Debris"):AddItem(v,.3)
	game:GetService("Debris"):AddItem(p,math.random(6,8))
	s=script.fireScript:clone()
	s.Disabled=false
	s.Parent=p
end
for i=1, math.random(3,4)+3 do
	p=Instance.new("Part")
	p.Name="FireBit"
	p.Transparency=1
	p.TopSurface=0
	p.BottomSurface=0
	p.CanCollide=true
	p.formFactor="Symmetric"
	p.Size=Vector3.new(3,1,3)
	p.CFrame=script.Parent.CFrame*CFrame.fromEulerAnglesXYZ(math.random(1,10)/10,math.random(20,30)/10,math.random(10,50)/10)
	p.Velocity=Vector3.new(math.random(-8,8),math.random(30,50),math.random(-8,8))
	p.RotVelocity=p.Velocity
	p.Parent=workspace
	f=Instance.new("Fire")
	f.Parent=p
	f.Size=math.random(2,3)
	f.Heat=math.random(6,15)
	g=Instance.new("BodyGyro")
	g.Parent=p
	v=Instance.new("BodyVelocity")
	v.P=5000
	v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	v.velocity=Vector3.new(math.random(-8,8)*4,math.random(20,46),math.random(-8,8)*4)/1.1
	v.Parent=p
	game:GetService("Debris"):AddItem(v,.4)
	game:GetService("Debris"):AddItem(p,math.random(7,8))
	s=script.fireScript:clone()
	s.Disabled=false
	s.Parent=p
end
s=Instance.new("Sound")
s.SoundId="http://www.roblox.com/asset/?id=2233908"
s.Pitch=1
s.Volume=1
s.Parent=script.Parent
s:Play()
r=Instance.new("Explosion")
r.BlastPressure=0
r.BlastRadius=9
r.Position=script.Parent.Position
r.Parent=workspace
r.Hit:connect(function(hit)
	if hit.Parent==nil then
		return
	end
	if hit.Parent:FindFirstChild("Humanoid")~=nil then
		t=hit.Parent:FindFirstChild("Torso")
		if t~=nil then
			if t:FindFirstChild("Lol,kersplode")==nil then
				h=hit.Parent.Humanoid
				v=Instance.new("BodyVelocity")
				v.Name="Lol,kersplode"
				v.P=5000
				v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
				v.velocity=(hit.Position-r.Position).unit*math.random(40,50)+Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				v.Parent=t
				game:GetService("Debris"):AddItem(v,.3)
				v=Instance.new("BodyAngularVelocity")
				v.Name="Lol,kersplode"
				v.P=5000
				v.maxTorque=Vector3.new(50000,50000,50000)*50000
				v.angularvelocity=(hit.Position-r.Position).unit*math.random(4,5)+Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))*4
				v.Parent=t
				game:GetService("Debris"):AddItem(v,.4)
				dmg=math.random(80,90)
				if h.Health>dmg then
					h.Health=h.Health-dmg
				else
					s=script.Ragdoll:clone()
					s.Disabled=false
					s.Parent=h.Parent
					wait(.05)
					h.Health=0
				end
				s=script.HAX:clone()
				s.Disabled=false
				s.Parent=h.Parent
			end
		end
	else
		if hit.CanCollide==true and hit.Anchored==false then
			hit:BreakJoints()
			v=Instance.new("BodyVelocity")
			v.P=5000
			v.maxForce=Vector3.new(math.huge,math.huge,math.huge)
			v.velocity=(hit.Position-r.Position).unit*math.random(40,50)+Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
			v.Parent=hit
			game:GetService("Debris"):AddItem(v,.25)
			hit.RotVelocity=hit.Velocity+Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
		end
	end
end)
end
trig=false
onTouched=function(hit)
	if hit.Parent==nil or trig==true or script.Parent.Balete.Value==false then
		print(1)
		return
	end
	if hit.Parent==script.Parent.Parent or hit.Parent==script.Parent.Parent.Parent then
		print(2)
		return
	end
	if hit.CanCollide==false and hit.Parent:FindFirstChild("Humanoid")==nil then
		return
	end
	trig=true
	win()
end
script.Parent.Touched:connect(onTouched)

end))
Script27.Name = "Ragdoll"
Script27.Parent = Script26
Script27.Disabled = true
table.insert(cors,sandbox(Script27,function()
print("Hello world!")

Character = script.Parent
Humanoid = Character.Humanoid
Torso = Character.Torso

function OnDeath()
	print("Death")--  HAHA
        wait(0.2)
        Humanoid.Parent = nil
	if Torso then
		local Head = Character:FindFirstChild("Head")
		if Head then
			local Neck = Instance.new("Weld")
			Neck.Name = "Neck"
			Neck.Part0 = Torso
			Neck.Part1 = Head
			Neck.C0 = CFrame.new(0, 1.5, 0)
			Neck.C1 = CFrame.new()
			Neck.Parent = Torso
		end
		local Limb = Character:FindFirstChild("Right Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(1.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(-0, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Arm")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-1.5, 0, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftShoulder"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-1.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(0, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Right Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "RightHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(0.5, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.C1 = CFrame.new(0, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		local Limb = Character:FindFirstChild("Left Leg")
		if Limb then

			Limb.CFrame = Torso.CFrame * CFrame.new(-0.5, -2, 0)
			local Joint = Instance.new("Glue")
			Joint.Name = "LeftHip"
			Joint.Part0 = Torso
			Joint.Part1 = Limb
			Joint.C0 = CFrame.new(-0.5, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.C1 = CFrame.new(-0, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
			Joint.Parent = Torso

			local B = Instance.new("Part")
			B.TopSurface = 0
			B.BottomSurface = 0
			B.formFactor = "Symmetric"
			B.Size = Vector3.new(1, 1, 1)
			B.Transparency = 1
			B.CFrame = Limb.CFrame * CFrame.new(0, -0.5, 0)
			B.Parent = Character
			local W = Instance.new("Weld")
			W.Part0 = Limb
			W.Part1 = B
			W.C0 = CFrame.new(0, -0.5, 0)
			W.Parent = Limb

		end
		--[
		local Bar = Instance.new("Part")
		Bar.TopSurface = 0
		Bar.BottomSurface = 0
		Bar.formFactor = "Symmetric"
		Bar.Size = Vector3.new(1, 1, 1)
		Bar.Transparency = 1
		Bar.CFrame = Torso.CFrame * CFrame.new(0, 0.5, 0)
		Bar.Parent = Character
		local Weld = Instance.new("Weld")
		Weld.Part0 = Torso
		Weld.Part1 = Bar
		Weld.C0 = CFrame.new(0, 0.5, 0)
		Weld.Parent = Torso
		--]]
	end
end

Humanoid.Died:connect(OnDeath)

end))
Script28.Name = "fireScript"
Script28.Parent = Script26
Script28.Disabled = true
table.insert(cors,sandbox(Script28,function()
wait()
onTouched=function(hit)
	if hit.Parent==nil then return end
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and game.Players:GetPlayerFromCharacter(hit.Parent)==nil then
		t=hit.Parent:FindFirstChild("Torso")
		if t~=nil then
			if t:FindFirstChild("Fire")==nil then
				s=script.Fire:clone()
				s.Disabled=false
				s.creator.Value=script.creator.Value
				s.Parent=t
				game:GetService("Debris"):AddItem(s,3)
				h:TakeDamage(30)
			end
		end
	end
	if hit.Name~="MiniPumpkinBomb" and hit.Name~="PumpkinFireBit" and hit.Name~="PumpkinBit" then
		wait(.75)
		script.Parent:Remove()
	end
end
script.Parent.Touched:connect(onTouched)
end))
ObjectValue29.Name = "creator"
ObjectValue29.Parent = Script28
ObjectValue30.Name = "creator"
ObjectValue30.Parent = Script26
LocalScript31.Name = "HAX"
LocalScript31.Parent = Script26
LocalScript31.Disabled = true
table.insert(cors,sandbox(LocalScript31,function()
wait()
c=workspace.CurrentCamera
for i=1, 20 do
	c.CoordinateFrame=c.CoordinateFrame*CFrame.new(math.random(-(10-(i/4)),(10-(i/4)))/2,math.random(-(5-(i/4)),(5-(i/4)))/2,math.random(-(10-(i/4)),(10-(i/4)))/2)
	wait(.01)
end
script:Remove()
end))
StringValue32.Name = "Te"
StringValue32.Parent = Part23
Part33.Name = "Handle7"
Part33.Parent = Tool0
Part33.BrickColor = BrickColor.new("Brown")
Part33.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part33.FormFactor = Enum.FormFactor.Symmetric
Part33.Size = Vector3.new(1, 1, 1)
Part33.CFrame = CFrame.new(668.355347, 270.049561, 123.624725, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part33.Color = Color3.new(0.486275, 0.360784, 0.27451)
Part33.Position = Vector3.new(668.355347, 270.049561, 123.624725)
Part33.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part33.Color = Color3.new(0.486275, 0.360784, 0.27451)
CylinderMesh34.Parent = Part33
CylinderMesh34.Scale = Vector3.new(0.400000006, 0.425000012, 0.400000006)
CylinderMesh34.Scale = Vector3.new(0.400000006, 0.425000012, 0.400000006)
StringValue35.Name = "Te"
StringValue35.Parent = Part33
Part36.Name = "Handle8"
Part36.Parent = Tool0
Part36.BrickColor = BrickColor.new("Dark stone grey")
Part36.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part36.FormFactor = Enum.FormFactor.Symmetric
Part36.Size = Vector3.new(1, 1, 1)
Part36.CFrame = CFrame.new(668.292053, 269.825867, 123.62056, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part36.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part36.Position = Vector3.new(668.292053, 269.825867, 123.62056)
Part36.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part36.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh37.Parent = Part36
CylinderMesh37.Scale = Vector3.new(0.444999993, 0.0500000007, 0.444999993)
CylinderMesh37.Scale = Vector3.new(0.444999993, 0.0500000007, 0.444999993)
StringValue38.Name = "Te"
StringValue38.Parent = Part36
Part39.Name = "Handle9"
Part39.Parent = Tool0
Part39.BrickColor = BrickColor.new("Dark stone grey")
Part39.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part39.FormFactor = Enum.FormFactor.Symmetric
Part39.Size = Vector3.new(1, 1, 1)
Part39.CFrame = CFrame.new(668.280518, 269.784973, 123.619797, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part39.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part39.Position = Vector3.new(668.280518, 269.784973, 123.619797)
Part39.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part39.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh40.Parent = Part39
CylinderMesh40.Scale = Vector3.new(0.400000006, 0.0500000007, 0.400000006)
CylinderMesh40.Scale = Vector3.new(0.400000006, 0.0500000007, 0.400000006)
StringValue41.Name = "Te"
StringValue41.Parent = Part39
Part42.Name = "Handle10"
Part42.Parent = Tool0
Part42.BrickColor = BrickColor.new("Dark stone grey")
Part42.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part42.FormFactor = Enum.FormFactor.Symmetric
Part42.Size = Vector3.new(1, 1, 1)
Part42.CFrame = CFrame.new(668.26416, 269.727264, 123.618721, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part42.Color = Color3.new(0.388235, 0.372549, 0.384314)
Part42.Position = Vector3.new(668.26416, 269.727264, 123.618721)
Part42.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
Part42.Color = Color3.new(0.388235, 0.372549, 0.384314)
CylinderMesh43.Parent = Part42
CylinderMesh43.Scale = Vector3.new(0.61500001, 0.075000003, 0.61500001)
CylinderMesh43.Scale = Vector3.new(0.61500001, 0.075000003, 0.61500001)
StringValue44.Name = "Te"
StringValue44.Parent = Part42
Part45.Name = "Handle11"
Part45.Parent = Tool0
Part45.Reflectance = 0.10000000149012
Part45.Rotation = Vector3.new(-103.099998, -73.7399979, 76.3799973)
Part45.FormFactor = Enum.FormFactor.Symmetric
Part45.Size = Vector3.new(1, 1, 1)
Part45.CFrame = CFrame.new(668.164795, 269.376099, 123.61219, 0.0659606904, -0.272162169, -0.95998764, -8.74698089e-05, -0.962084472, 0.272750616, -0.997822046, -0.0179068558, -0.0634835809)
Part45.Position = Vector3.new(668.164795, 269.376099, 123.61219)
Part45.Orientation = Vector3.new(-15.8299999, -93.7799988, -179.990005)
CylinderMesh46.Parent = Part45
CylinderMesh46.Scale = Vector3.new(0.524999976, 0.699999988, 0.524999976)
CylinderMesh46.Scale = Vector3.new(0.524999976, 0.699999988, 0.524999976)
Decal47.Parent = Part45
Decal47.Texture = "http://www.roblox.com/asset/?id=23655482"
Decal47.Face = Enum.NormalId.Right
StringValue48.Name = "Te"
StringValue48.Parent = Part45
for i,v in pairs(mas:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Backpack
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
