--turdulator's wings
wait()
print("LOL Y U NO GIVE CREDIT")
--this was more annoying than originally thought, I HATE C1!!!
Turd=script.Parent
while true do
	Torso=Turd:FindFirstChild("Torso")
	if Torso~=nil then
		break
	end
	wait(.05)
end
-- the first three wings apply to the left side.
for _,v in pairs(Turd:children()) do
	if v.Name=="Wing" then
		v:Remove()
	end
end
speed=0
MOVER=function(Motor1,Motor2,moar)
	Motor1.MaxVelocity=.3
	while true do
		if speed>0 then
			Motor1.DesiredAngle=speed/1.4+moar/2
			Motor2.DesiredAngle=.35+speed/4+moar/6
		else
			checkdes=math.sin(time()*1)/2.35
			Motor1.DesiredAngle=-.35+checkdes+moar
			Motor2.DesiredAngle=checkdes/1.325
		end
		if script:FindFirstChild("Flying")~=nil then
			checkdes=math.sin(time()*(5+speed*2))/(3-speed)
			Motor1.DesiredAngle=-.35+checkdes+moar+.5
			Motor2.DesiredAngle=checkdes*1.5
		end
		wait(.05)
	end
end
MOVEL=function(Motor1,Motor2,moar)
	Motor1.MaxVelocity=.3
	while true do
		if speed>0 then
			Motor1.DesiredAngle=-(speed/1.4+moar/2)
			Motor2.DesiredAngle=(.35+speed/4+moar/6)
		else
			checkdes=math.sin(time()*1)/2.35
			Motor1.DesiredAngle=-(-.35+checkdes+moar)
			Motor2.DesiredAngle=(checkdes/1.325)
		end
		if script:FindFirstChild("Flying")~=nil then
			checkdes=math.sin(time()*(5+speed*2))/(3-speed)
			Motor1.DesiredAngle=-(-.35+checkdes+moar)-.5
			Motor2.DesiredAngle=(checkdes/.5)
		end
		wait(.05)
	end
end
Hum=Turd.Humanoid
chkspd=function()
	spd=0
	spd=(Torso.Velocity-Vector3.new(0,0,0)).magnitude
	if spd>0 then
		speed=spd/Hum.WalkSpeed
	else
		speed=0
	end
end
Turd.Humanoid.Running:connect(chkspd)
Wing=Instance.new("Part")
Wing.Name="Wing"
Wing.BrickColor=BrickColor.new("Dark stone grey")
Wing.formFactor="Symmetric"
Wing.CanCollide=false
Wing.TopSurface=0
Wing.BottomSurface=0
Wing.CFrame=Torso.CFrame --for now, prevents welderp.
Wing.Size=Vector3.new(1,1,2) --originally much bigger, but caused movement problemz.
Wing.Parent=Turd --for quick editing purposes.
Wing.archivable=false --for quick editing purposes.
m=Instance.new("BlockMesh")
m.Parent=Wing
m.Scale=Vector3.new(.25,.45,1)
Motor1=Instance.new("Motor") --SIX DIMENSIONAL BRICK YEAH
Motor1.MaxVelocity=.15
Motor1.Name="Motor1"
Motor1.Part0=Torso
Motor1.Part1=Wing
Motor1.Parent=Torso
Motor1.C0=CFrame.new(-.5,0.7,.6375)
Motor1.C1=CFrame.new(0,0,.75)*CFrame.fromEulerAnglesXYZ(math.pi,math.pi/4.5,math.pi/4)


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("SpecialMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.25,.5,.25)
w=Instance.new("Weld")
w.Part0=Wing
w.Part1=Wing2
w.C0=CFrame.new(0,0,-1.05)
w.Parent=Wing


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("BlockMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.45,.25,.5)
Motor=Instance.new("Motor")
Motor.MaxVelocity=.075
Motor.Name="Motor2"
Motor.Part0=Wing
Motor.Part1=Wing2
Motor.Parent=Torso
Motor.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
Motor.C1=CFrame.new(0,0,-.25)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.2,.25)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(0.125,0,.375)*CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)
w.Parent=Wing2

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.3,.4)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(-.075,0,.45)*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
w.Parent=Wing2

coroutine.resume(coroutine.create(MOVER),Motor1,Motor,0)


Wing=Instance.new("Part")
Wing.Name="Wing"
Wing.BrickColor=BrickColor.new("Dark stone grey")
Wing.formFactor="Symmetric"
Wing.CanCollide=false
Wing.TopSurface=0
Wing.BottomSurface=0
Wing.CFrame=Torso.CFrame --for now, prevents welderp.
Wing.Size=Vector3.new(1,1,2) --originally much bigger, but caused movement problemz.
Wing.Parent=Turd --for quick editing purposes.
Wing.archivable=false --for quick editing purposes.
m=Instance.new("BlockMesh")
m.Parent=Wing
m.Scale=Vector3.new(.25,.45,1)
Motor1=Instance.new("Motor") --SIX DIMENSIONAL BRICK YEAH
Motor1.MaxVelocity=.15
Motor1.Name="Motor1"
Motor1.Part0=Torso
Motor1.Part1=Wing
Motor1.Parent=Torso
Motor1.C0=CFrame.new(-.5,0,.6375)
Motor1.C1=CFrame.new(0,0,.75)*CFrame.fromEulerAnglesXYZ(math.pi,math.pi/4.5,math.pi/4)


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("SpecialMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.25,.5,.25)
w=Instance.new("Weld")
w.Part0=Wing
w.Part1=Wing2
w.C0=CFrame.new(0,0,-1.05)
w.Parent=Wing


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("BlockMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.45,.25,.5)
Motor=Instance.new("Motor")
Motor.MaxVelocity=.075
Motor.Name="Motor2"
Motor.Part0=Wing
Motor.Part1=Wing2
Motor.Parent=Torso
Motor.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
Motor.C1=CFrame.new(0,0,-.25)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.2,.25)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(0.125,0,.375)*CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)
w.Parent=Wing2

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.3,.4)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(-.075,0,.45)*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
w.Parent=Wing2

coroutine.resume(coroutine.create(MOVER),Motor1,Motor,.5)



Wing=Instance.new("Part")
Wing.Name="Wing"
Wing.BrickColor=BrickColor.new("Dark stone grey")
Wing.formFactor="Symmetric"
Wing.CanCollide=false
Wing.TopSurface=0
Wing.BottomSurface=0
Wing.CFrame=Torso.CFrame --for now, prevents welderp.
Wing.Size=Vector3.new(1,1,2) --originally much bigger, but caused movement problemz.
Wing.Parent=Turd --for quick editing purposes.
Wing.archivable=false --for quick editing purposes.
m=Instance.new("BlockMesh")
m.Parent=Wing
m.Scale=Vector3.new(.25,.45,1)
Motor1=Instance.new("Motor") --SIX DIMENSIONAL BRICK YEAH
Motor1.MaxVelocity=.15
Motor1.Name="Motor1"
Motor1.Part0=Torso
Motor1.Part1=Wing
Motor1.Parent=Torso
Motor1.C0=CFrame.new(-.5,-.575,.6375)
Motor1.C1=CFrame.new(0,0,.75)*CFrame.fromEulerAnglesXYZ(math.pi,math.pi/4.5,math.pi/4)


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("SpecialMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.25,.5,.25)
w=Instance.new("Weld")
w.Part0=Wing
w.Part1=Wing2
w.C0=CFrame.new(0,0,-1.05)
w.Parent=Wing


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("BlockMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.45,.25,.5)
Motor=Instance.new("Motor")
Motor.MaxVelocity=.075
Motor.Name="Motor2"
Motor.Part0=Wing
Motor.Part1=Wing2
Motor.Parent=Torso
Motor.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
Motor.C1=CFrame.new(0,0,-.25)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.2,.25)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(0.125,0,.375)*CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)
w.Parent=Wing2

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.3,.4)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(-.075,0,.45)*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
w.Parent=Wing2

coroutine.resume(coroutine.create(MOVER),Motor1,Motor,1.6)






--LEFT SIED TIEM

Wing=Instance.new("Part")
Wing.Name="Wing"
Wing.BrickColor=BrickColor.new("Dark stone grey")
Wing.formFactor="Symmetric"
Wing.CanCollide=false
Wing.TopSurface=0
Wing.BottomSurface=0
Wing.CFrame=Torso.CFrame --for now, prevents welderp.
Wing.Size=Vector3.new(1,1,2) --originally much bigger, but caused movement problemz.
Wing.Parent=Turd --for quick editing purposes.
Wing.archivable=false --for quick editing purposes.
m=Instance.new("BlockMesh")
m.Parent=Wing
m.Scale=Vector3.new(.25,.45,1)
Motor1=Instance.new("Motor") --SIX DIMENSIONAL BRICK YEAH
Motor1.MaxVelocity=.15
Motor1.Name="Motor1"
Motor1.Part0=Torso
Motor1.Part1=Wing
Motor1.Parent=Torso
Motor1.C0=CFrame.new(.5,0.7,.6375)
Motor1.C1=CFrame.new(0,0,.75)*CFrame.fromEulerAnglesXYZ(math.pi,-math.pi/4.5,-math.pi/4)


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("SpecialMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.25,.5,.25)
w=Instance.new("Weld")
w.Part0=Wing
w.Part1=Wing2
w.C0=CFrame.new(0,0,-1.05)
w.Parent=Wing


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("BlockMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.45,.25,.5)
Motor=Instance.new("Motor")
Motor.MaxVelocity=.075
Motor.Name="Motor2"
Motor.Part0=Wing
Motor.Part1=Wing2
Motor.Parent=Torso
Motor.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
Motor.C1=CFrame.new(0,0,-.25)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.2,.25)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(0.125,0,.375)*CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)
w.Parent=Wing2

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.3,.4)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(-.075,0,.45)*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
w.Parent=Wing2

coroutine.resume(coroutine.create(MOVEL),Motor1,Motor,0)


Wing=Instance.new("Part")
Wing.Name="Wing"
Wing.BrickColor=BrickColor.new("Dark stone grey")
Wing.formFactor="Symmetric"
Wing.CanCollide=false
Wing.TopSurface=0
Wing.BottomSurface=0
Wing.CFrame=Torso.CFrame --for now, prevents welderp.
Wing.Size=Vector3.new(1,1,2) --originally much bigger, but caused movement problemz.
Wing.Parent=Turd --for quick editing purposes.
Wing.archivable=false --for quick editing purposes.
m=Instance.new("BlockMesh")
m.Parent=Wing
m.Scale=Vector3.new(.25,.45,1)
Motor1=Instance.new("Motor") --SIX DIMENSIONAL BRICK YEAH
Motor1.MaxVelocity=.15
Motor1.Name="Motor1"
Motor1.Part0=Torso
Motor1.Part1=Wing
Motor1.Parent=Torso
Motor1.C0=CFrame.new(.5,0,.6375)
Motor1.C1=CFrame.new(0,0,.75)*CFrame.fromEulerAnglesXYZ(math.pi,-math.pi/4.5,-math.pi/4)


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("SpecialMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.25,.5,.25)
w=Instance.new("Weld")
w.Part0=Wing
w.Part1=Wing2
w.C0=CFrame.new(0,0,-1.05)
w.Parent=Wing


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("BlockMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.45,.25,.5)
Motor=Instance.new("Motor")
Motor.MaxVelocity=.075
Motor.Name="Motor2"
Motor.Part0=Wing
Motor.Part1=Wing2
Motor.Parent=Torso
Motor.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
Motor.C1=CFrame.new(0,0,-.25)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.2,.25)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(0.125,0,.375)*CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)
w.Parent=Wing2

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.3,.4)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(-.075,0,.45)*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
w.Parent=Wing2

coroutine.resume(coroutine.create(MOVEL),Motor1,Motor,.5)



Wing=Instance.new("Part")
Wing.Name="Wing"
Wing.BrickColor=BrickColor.new("Dark stone grey")
Wing.formFactor="Symmetric"
Wing.CanCollide=false
Wing.TopSurface=0
Wing.BottomSurface=0
Wing.CFrame=Torso.CFrame --for now, prevents welderp.
Wing.Size=Vector3.new(1,1,2) --originally much bigger, but caused movement problemz.
Wing.Parent=Turd --for quick editing purposes.
Wing.archivable=false --for quick editing purposes.
m=Instance.new("BlockMesh")
m.Parent=Wing
m.Scale=Vector3.new(.25,.45,1)
Motor1=Instance.new("Motor") --SIX DIMENSIONAL BRICK YEAH
Motor1.MaxVelocity=.15
Motor1.Name="Motor1"
Motor1.Part0=Torso
Motor1.Part1=Wing
Motor1.Parent=Torso
Motor1.C0=CFrame.new(.5,-.575,.6375)
Motor1.C1=CFrame.new(0,0,.75)*CFrame.fromEulerAnglesXYZ(math.pi,-math.pi/4.5,-math.pi/4)


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("SpecialMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.25,.5,.25)
w=Instance.new("Weld")
w.Part0=Wing
w.Part1=Wing2
w.C0=CFrame.new(0,0,-1.05)
w.Parent=Wing


Wing2=Instance.new("Part")
Wing2.Name="Wing"
Wing2.BrickColor=BrickColor.new("Dark stone grey")
Wing2.formFactor="Symmetric"
Wing2.CanCollide=false
Wing2.TopSurface=0
Wing2.BottomSurface=0
Wing2.CFrame=Torso.CFrame
Wing2.Size=Vector3.new(1,1,1)
Wing2.Parent=Turd
Wing2.archivable=false
m=Instance.new("BlockMesh")
m.Parent=Wing2
m.Scale=Vector3.new(.45,.25,.5)
Motor=Instance.new("Motor")
Motor.MaxVelocity=.075
Motor.Name="Motor2"
Motor.Part0=Wing
Motor.Part1=Wing2
Motor.Parent=Torso
Motor.C0=CFrame.new(0,0,-1)*CFrame.fromEulerAnglesXYZ(math.pi/2,math.pi/2,0)
Motor.C1=CFrame.new(0,0,-.25)*CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0)

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.2,.25)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(0.125,0,.375)*CFrame.fromEulerAnglesXYZ(0,math.pi,-math.pi/2)
w.Parent=Wing2

Wing3=Instance.new("Part")
Wing3.Name="Wing"
Wing3.BrickColor=BrickColor.new("Dark stone grey")
Wing3.formFactor="Symmetric"
Wing3.CanCollide=false
Wing3.TopSurface=0
Wing3.BottomSurface=0
Wing3.CFrame=Torso.CFrame
Wing3.Size=Vector3.new(1,1,1)
Wing3.Parent=Turd
Wing3.archivable=false
m=Instance.new("SpecialMesh")
m.MeshType="Wedge"
m.Parent=Wing3
m.Scale=Vector3.new(.25,.3,.4)
w=Instance.new("Weld")
w.Part0=Wing2
w.Part1=Wing3
w.C0=CFrame.new(-.075,0,.45)*CFrame.fromEulerAnglesXYZ(0,math.pi,math.pi/2)
w.Parent=Wing2

coroutine.resume(coroutine.create(MOVEL),Motor1,Motor,1.6)