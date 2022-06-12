lordsheen=Workspace.lordsheen 
lordsheen.Torso["Right Shoulder"]:Remove() 
local Motor = Instance.new("Motor")
Motor.Parent = lordsheen["Torso"] 
Motor.Name = "Right Top" 
Motor.Part0 = lordsheen["Torso"]  
Motor.Part1 = lordsheen["Right Arm"] 
Motor.C0 = CFrame.new(0.75,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
Motor.C1 = CFrame.new(-0.75,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
Motor.MaxVelocity = 0.1 
Motor.DesiredAngle = math.pi/2 