--Somehow I also fucked up on this thing but eh, its just something beast was working on in anti's
char=workspace.plrname
run=false
run1 = false

idle = false
idle1 = false

if char:FindFirstChild('Animate') then
  char.Animate:remove()
end

if char:FindFirstChild("Humanoid") then
  if char.Humanoid:FindFirstChild("Animator") then
    char.Humanoid.Animator:remove()
  end
end

leftarm_x=-1.5
leftarm_y=0
leftarm_z=0

leftarm_x1=0
leftarm_y1=0
leftarm_z1=-0.15

rightarm_x=1.5
rightarm_y=0
rightarm_z=0

rightarm_x1=0
rightarm_y1=0
rightarm_z1=0.15

leftleg_x=0.5
leftleg_y=2
leftleg_z=0

leftleg_x1=0
leftleg_y1=0
leftleg_z1=0


rightleg_x=-0.5
rightleg_y=2
rightleg_z=0

rightleg_x1=0
rightleg_y1=0
rightleg_z1=0

torso_x = 0
torso_y = 0
torso_z = 0 

torso_x1 = 0
torso_y1 = 0
torso_z1 = 0

head_x = 0
head_y = 1.5
head_z = 0

head_x1 = 0
head_y1 = 0
head_z1 = 0

leftarm=Instance.new("Weld",char)
leftarm.Part0=char.Torso
leftarm.Part1=char['Left Arm']

rightarm=Instance.new("Weld",char)
rightarm.Part0=char.Torso
rightarm.Part1=char['Right Arm']

rightleg=Instance.new("Weld",char)
rightleg.Part0=char.HumanoidRootPart
rightleg.Part1=char['Right Leg']

leftleg=Instance.new("Weld",char)
leftleg.Part0=char.HumanoidRootPart
leftleg.Part1=char['Left Leg']

torso=Instance.new("Weld",char)
torso.Part0=char.HumanoidRootPart
torso.Part1=char.Torso

head=Instance.new("Weld",char)
head.Part0=char.Torso
head.Part1=char.Head

sword=Instance.new("Part",char)
sword.Size=Vector3.new(0.1,3,0)
sword.Material='Neon'
sword.CanCollide = false


sl=Instance.new("SurfaceLight",sword)
sl.Color=Color3.new(0,2,0)
sl.Face='Left'
sl.Range='10'

sl1=sl:clone()
sl1.Parent=sword
sl1.Face='Right'

sl2=sl:clone()
sl2.Parent=sword
sl2.Face='Top'

sl3=sl1:clone()
sl3.Parent=sword
sl3.Face='Bottom'

sl4=sl1:clone()
sl4.Parent=sword
sl4.Face='Top'

swordmesh=Instance.new("SpecialMesh",sword)
swordmesh.MeshType='FileMesh';
swordmesh.MeshId='http://www.roblox.com/asset/?id=94840342'
swordmesh.TextureId='http://www.roblox.com/asset?id=101407966'

swordw=Instance.new("Weld",sword)
swordw.Part1=char['Right Arm']
swordw.Part0=swprd
swordw.C0=CFrame.new(0,-2.7,1)*CFrame.Angles(1.5,0,0)


sword2=Instance.new("Part",char)
sword2.Size=Vector3.new(0.1,3,0)
sword2.Material='Neon'
sword2.CanCollide = false

sl=Instance.new("SurfaceLight",sword2)
sl.Color=Color3.new(0,2,0)
sl.Face='Left'
sl.Range='10'

sl1=sl:clone()
sl1.Parent=sword2
sl1.Face='Right'

sl2=sl:clone()
sl2.Parent=sword2
sl2.Face='Top'

sl3=sl1:clone()
sl3.Parent=sword2
sl3.Face='Bottom'

sl4=sl1:clone()
sl4.Parent=sword2
sl4.Face='Top'

swordmesh2=Instance.new("SpecialMesh",sword)
swordmesh2.MeshType='FileMesh';
swordmesh2.MeshId='http://www.roblox.com/asset/?id=94840342'
swordmesh2.TextureId='http://www.roblox.com/asset?id=101407966'


swordw2=Instance.new("Weld",sword)
swordw2.Part1=char['Right Arm']
swordw2.Part0=swprd
swordw2.C0=CFrame.new(0,-2.7,1)*CFrame.Angles(1.5,0,0)

game:GetService'RunService'.RenderStepped:connect(function()
 leftarm.C0=CFrame.new(leftarm_x,leftarm_y,leftarm_z)*CFrame.Angles(leftarm_x1,leftarm_y1,leftarm_z1)
 rightarm.C0=CFrame.new(rightarm_x,rightarm_y,rightarm_z)*CFrame.Angles(rightarm_x1,rightarm_y1,rightarm_z1)
 leftleg.C0=CFrame.new(leftleg_x,leftleg_y,leftleg_z)*CFrame.Angles(leftleg_x1,leftleg_y1,leftleg_z1)
 rightleg.C0=CFrame.new(rightleg_x,rightleg_y,rightleg_z)*CFrame.Angles(rightleg_x1,rightleg_y1,rightleg_z1)
 torso.C0=CFrame.new(torso_x,torso_y,torso_z)*CFrame.Angles(torso_x1,torso_y1,torso_z1)
 head.C0=CFrame.new(head_x,head_y,head_z)*CFrame.Angles(head_x1,head_y1,head_z1)
end)


 coroutine.resume(coroutine.createfunction()
  for x = 0,math.huge do wait()
 for i = 0,math.huge do wait()
  leftarm_y=i
  rightarm_y=i
 end
 for i = .04,0,-0,0012 do wait()
  leftarm_y=i
  rightarm_y=i
 end
 end
 end))


 coroutine.resume(coroutine.create(function()
 for x = 0,math.huge do wait()
 for i = -0.2,-0.1,0.003 do wait()
 head_x1=i
 end
 for i = -0.1,-0.2,-0.003 do wait()
 head x1=i
 end
 end
 end))


    coroutine.resume(coroutine.create(function()
    for x = 0,math.huge do wait()
    for i = -.13,-.1,0.0009 do wait()
 rightarm_x1=i
 leftarm_x1=i
    end
    for i =-.1,-.13,-0.0009 do wait()
 rightarm_x1=i
 leftarm_x1=i
    end
    end
    end))


char.Humanoid.Running:connect(function(speed)
 if speed>14 then
 run=true
 idle=false
 end

 if speed<14 then
   run=false
   idle=true
 end
end)

game:GetService'RunService'.RenderStepped:connect(function()
    if run == true then
      if run1 == false then
      run1=true
    coroutine.resume(coroutine.create(function()
      if run == true then
        if run1 == true then
           for i = 0,-0.2,0.05 do wait()
           if run == true then
           torso_x1=i
           end
           end
           for asd = 0,math.huge,.1 do wait()
   for i =-0.3,0.2,.05 do wait()
     if run == true then
   leftleg_x1=i
   rightleg_x1=-i
      end
   end

 for i = 0.2,-0.3,-.05 do wait()
    if run == true then
  leftleg_x1=i
  rightleg_x1=-i
    end
 end
 end
   end
   end
   end))
   end
   end

    if idle == true then
      if idle1 == false then
      idle1=true
    coroutine.resume(coroutine.create(function()
      if idle == true then
        if idle1 == true then
           for asd = 0,math.huge,.1 do wait()
    for i = 0.02,0.03,.00038 do wait()
      if idle == true then
    leftleg_z1=i
    rightleg_z1=-i
      leftleg_x1=0
    rightleg_x1=0
      end
    end

  for i = 0.03,0.02,-.00038 do wait()
    if idle == true then
   leftleg_z1=i
   rightleg_z1=-i
       leftleg_x1=0
   rightleg_x1=0
     end
  end
  end
    end
    end
    end))
    end
    end
end)