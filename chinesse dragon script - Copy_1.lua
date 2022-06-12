:ls ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



pcall(function ()

for i,v in pairs(script:GetChildren()) do

if v:IsA('StringValue') then

v.Value = ''

v:Destroy()

end

end

end)

script.Parent = nil



local _ = game.Players.LocalPlayer

local dawn = false

local up = true

local fromup = 1

local fire = false

local ice = false

local heal = false

local col1 = BrickColor.new("Really black")

local col2 = BrickColor.new("red")



repeat wait() until _ ~= nil



local mouse = _:GetMouse()



local BlackMagic = Instance.new("Model", workspace)

BlackMagic.Name = ""



length = 3



away = 2 



gap = 0



segs = 40



distance = length/3



speed = 5



Wave = 0



part1 = Instance.new("Part")

part1.BrickColor = BrickColor.Green() 

part1.Transparency = 0 

part1.Locked = true 

part1.Size = Vector3.new(1,1,1)

part1.Anchored = true 

part1.CanCollide = true 

part1.Parent = nil

part1.Name = "Part1" 

part1.TopSurface = "Smooth"

part1.BottomSurface = "Smooth"



local Tail = {}



local Tail2 = {}



local part0 = Instance.new("Part") 



part0.BrickColor = col1



part0.TopSurface = 0 



part0.BottomSurface = 0 



part0.Locked = true 



part0.FormFactor = "Symmetric"



part0.Size = Vector3.new(3,3,4) 



part0.Anchored = true 



part0.Shape = 1 



part0.CanCollide = true 



part0.Parent = nil 



part0.Name = "Part0" 



local A = Instance.new("SpecialMesh") 



A.MeshType = "Brick"



A.Parent = part0



A.Name = "Mesh"



A.Scale = Vector3.new(1.1, 1.1, 1.1)



local part1 = Instance.new("Part") 



part1.BrickColor = col1



part1.TopSurface = 0 



part1.BottomSurface = 0 



part1.Locked = true 



part1.FormFactor = "Symmetric"



part1.Size = Vector3.new(1,2,1) 



part1.Anchored = true 



part1.Shape = 1 



part1.CanCollide = true 



part1.Parent = nil 



part1.Name = "Part1" 



local A2 = Instance.new("SpecialMesh") 



A2.MeshId = "http://www.roblox.com/asset/?id=19326912"



A2.Parent = part1



A2.Scale = Vector3.new(3,1,1)



A2.Name = "Mesh"



for p = 1,segs do



Tail[p] = part0:Clone() 



Tail[p].Parent = nil 



Tail[p].Name = "Part"..p 



Tail[p].CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))



Tail[p].Mesh.Scale = Vector3.new(1.1 - (p/1000), 1.4 - (p/1000), 1.1 - (p/1000)) 



Tail2[p] = part1:Clone() 



Tail2[p].Size = Vector3.new(1,2,1)



Tail2[p].BrickColor = col1



Tail2[p].Parent = nil 



Tail2[p].Name = "Limb"..p 



Tail2[p].CFrame = CFrame.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))



end 



for z=26,28 do

Tail[z].Mesh.Scale = Tail[z].Mesh.Scale - Vector3.new(0.1,0.1,0.1)

Tail2[z].Mesh.Scale = Tail2[z].Mesh.Scale - Vector3.new(0.5,0.1,0.1)

end



for z=29,31 do

Tail[z].Mesh.Scale = Tail[z].Mesh.Scale - Vector3.new(0.2,0.2,0.2)

Tail2[z].Mesh.Scale = Tail2[z].Mesh.Scale - Vector3.new(1,0.2,0.2)

end



for z=32,34 do

Tail[z].Mesh.Scale = Tail[z].Mesh.Scale - Vector3.new(0.3,0.3,0.3)

Tail2[z].Mesh.Scale = Tail2[z].Mesh.Scale - Vector3.new(1.5,0.3,0.3)



end



for z=35,37 do

Tail[z].Mesh.Scale = Tail[z].Mesh.Scale - Vector3.new(0.4,0.4,0.4)

Tail2[z].Mesh.Scale = Tail2[z].Mesh.Scale - Vector3.new(2,0.4,0.4)



end



for z=38,40 do

Tail[z].Mesh.Scale = Tail[z].Mesh.Scale - Vector3.new(0.5,0.5,0.5)

Tail2[z].Mesh.Scale = Tail2[z].Mesh.Scale - Vector3.new(2.5,0.5,0.5)



end



limb6 = part1:clone()

limb6.Size = Vector3.new(1,1,1)

limb6.BrickColor = col1

limb6.Name = "Head4"

limb6.Mesh.Scale = Vector3.new(3,4,4)



limb7 = part0:clone()

limb7.Size = Vector3.new(1,2,3)

limb7.BrickColor = col1

limb7.Name = "Head3"

limb7.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb8 = part0:clone()

limb8.Size = Vector3.new(1,1,4)

limb8.BrickColor = col1

limb8.Name = "horn1"

limb8.Mesh.Scale = Vector3.new(3.5,3.5,3.5)

limb8.Mesh.MeshType = 'FileMesh'

limb8.Mesh.MeshId = 'http://www.roblox.com/asset/?id=20518365'



limb9 = part0:clone()

limb9.Size = Vector3.new(1,1,4)

limb9.BrickColor = col1

limb9.Name = "horn2"

limb9.Mesh.Scale = Vector3.new(3.5,3.5,3.5)

limb9.Mesh.MeshType = 'FileMesh'

limb9.Mesh.MeshId = 'http://www.roblox.com/asset/?id=20518365'



limb10 = part0:clone()

limb10.Size = Vector3.new(2,2,5)

limb10.BrickColor = col1

limb10.Name = "Head2"

limb10.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb11 = part0:clone()

limb11.Size = Vector3.new(1,2,1)

limb11.BrickColor = col1

limb11.Name = "Leg1"

limb11.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb12 = part0:clone()

limb12.Size = Vector3.new(1,2,1)

limb12.BrickColor = col1

limb12.Name = "Leg2"

limb12.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb13 = part0:clone()

limb13.Size = Vector3.new(1,2,1)

limb13.BrickColor = col1

limb13.Name = "Leg3"

limb13.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb14 = part0:clone()

limb14.Size = Vector3.new(1,2,1)

limb14.BrickColor = col1

limb14.Name = "Leg4"

limb14.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb15 = part0:clone()

limb15.Size = Vector3.new(1,2,1)

limb15.BrickColor = col1

limb15.Name = "Leg5"

limb15.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb16 = part0:clone()

limb16.Size = Vector3.new(1,2,1)

limb16.BrickColor = col1

limb16.Name = "Leg6"

limb16.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb17 = part0:clone()

limb17.Size = Vector3.new(1,2,1)

limb17.BrickColor = col1

limb17.Name = "Leg7"

limb17.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb18 = part0:clone()

limb18.Size = Vector3.new(1,2,1)

limb18.BrickColor = col1

limb18.Name = "Leg8"

limb18.Mesh.Scale = Vector3.new(1.5,1.5,1.5)



limb41 = part0:clone()

limb41.Size = Vector3.new(1,1,1)

limb41.BrickColor = col1

limb41.Name = "TailEnd"

limb41.Mesh.Scale = Vector3.new(1.5,4,1.5) 

limb41.Mesh.MeshType = "FileMesh"

limb41.Mesh.MeshId = "http://www.roblox.com/asset/?id=25212400"



local main = part0:Clone()

main.Name = "Head"

main.Size = Vector3.new(3, 4, 4) 

main.Transparency = 0 

main.Anchored = true 

main.BrickColor = col1

main.TopSurface = 0 

main.BottomSurface = 0 



pos = Instance.new("BodyVelocity", main) 

stay = Instance.new("BodyGyro", main) 

pos.maxForce = Vector3.new(100000,100000,100000)

stay.maxTorque = Vector3.new(math.huge,math.huge,math.huge)

stay.cframe = CFrame.new(0,0,0)



function onButton1Down(mouse) 

local player = game.Players.LocalPlayer 

if player == nil then return end 

if player ~= nil then

player.Parent = nil

end



print("trigger") 



if main.Parent ~= BlackMagic then



main.Parent = BlackMagic 

limb6.Parent = BlackMagic

limb7.Parent = BlackMagic

limb8.Parent = BlackMagic

limb9.Parent = BlackMagic

limb10.Parent = BlackMagic

limb11.Parent = BlackMagic

limb12.Parent = BlackMagic

limb13.Parent = BlackMagic

limb14.Parent = BlackMagic

limb15.Parent = BlackMagic

limb16.Parent = BlackMagic

limb17.Parent = BlackMagic

limb18.Parent = BlackMagic

limb41.Parent = BlackMagic

end



-- find the best cf 

me = BlackMagic



workspace.CurrentCamera.CameraSubject = main

workspace.CurrentCamera.CameraType = "Track"



for p = 1,segs do



Tail[p].Parent = me



Tail2[p].Parent = me



end 





part1 = Tail[1]





follow = true 



while follow do







Wave = Wave + 0.02



distance = length/3



mousehit = mouse.Hit.p 



if (main.Position - mousehit).magnitude >speed then 



main_mousehit = (main.Position - mousehit).unit*speed 



else 



main_mousehit = (main.Position - mousehit).unit*1 



end 







start1 = main.Position-main_mousehit 



main.CFrame = CFrame.new(start1.x, start1.y, start1.z) 



p1pos = part1.Position



start1_p1pos = (start1 - p1pos).unit 



spreadp1 = start1_p1pos*(distance+away) 



part1.CFrame = CFrame.new(start1-spreadp1, start1)







main.CFrame=Tail[1].CFrame*CFrame.new(0,0.5,-4)*CFrame.fromEulerAnglesXYZ(-math.pi/5,0,0)







Wave = Wave + 0.02







pc = main.CFrame 



starti = main.Position-(pc.lookVector*distance) 



pipos = Tail[1].Position 



starti_pipos = (starti - pipos).unit 



spreadpi = starti_pipos*(distance+gap) 



Tail[1].CFrame = CFrame.new(starti-spreadpi, starti) + (part0.CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6)/4 







--[[



for i = 1,39 do



wait()



print("p2c = Tail["..i.."].CFrame\



start3 = Tail["..i.."].Position-(p2c.lookVector*distance)\



p3pos = Tail["..(i+1).."].Position\



start3_p3pos = (start3 - p3pos).unit\



spreadp3 = start3_p3pos*(distance+gap)\



Tail["..(i+1).."].CFrame = CFrame.new(start3-spreadp3, start3 - Vector3.new(0,math.sin(Wave*6+"..((i-1)/100)..")/4,0) ) + Vector3.new(0,math.sin(Wave*6+"..((i)/100)..")/4,0)\



" )



end 



]]



p2c = Tail[1].CFrame start3 = Tail[1].Position-(p2c.lookVector*distance) p3pos = Tail[2].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[2].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[1].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0)/4 ) + (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 



p2c = Tail[2].CFrame start3 = Tail[2].Position-(p2c.lookVector*distance) p3pos = Tail[3].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[3].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[2].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.01)/4 ) + (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 



p2c = Tail[3].CFrame start3 = Tail[3].Position-(p2c.lookVector*distance) p3pos = Tail[4].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[4].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[3].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.02)/4 ) + (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 



p2c = Tail[4].CFrame start3 = Tail[4].Position-(p2c.lookVector*distance) p3pos = Tail[5].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[5].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[4].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.03)/4 ) + (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 



p2c = Tail[5].CFrame start3 = Tail[5].Position-(p2c.lookVector*distance) p3pos = Tail[6].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[6].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[5].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.04)/4 ) + (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 



p2c = Tail[6].CFrame start3 = Tail[6].Position-(p2c.lookVector*distance) p3pos = Tail[7].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[7].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[6].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.05)/4 ) + (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 



p2c = Tail[7].CFrame start3 = Tail[7].Position-(p2c.lookVector*distance) p3pos = Tail[8].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[8].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[7].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.06)/4 ) + (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 



p2c = Tail[8].CFrame start3 = Tail[8].Position-(p2c.lookVector*distance) p3pos = Tail[9].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[9].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[8].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.07)/4 ) + (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 



p2c = Tail[9].CFrame start3 = Tail[9].Position-(p2c.lookVector*distance) p3pos = Tail[10].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[10].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[9].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.08)/4 ) + (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 



p2c = Tail[10].CFrame start3 = Tail[10].Position-(p2c.lookVector*distance) p3pos = Tail[11].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[11].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[10].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.09)/4 ) + (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 



p2c = Tail[11].CFrame start3 = Tail[11].Position-(p2c.lookVector*distance) p3pos = Tail[12].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[12].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[11].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.1)/4 ) + (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 



p2c = Tail[12].CFrame start3 = Tail[12].Position-(p2c.lookVector*distance) p3pos = Tail[13].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[13].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[12].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.11)/4 ) + (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 



p2c = Tail[13].CFrame start3 = Tail[13].Position-(p2c.lookVector*distance) p3pos = Tail[14].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[14].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[13].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.12)/4 ) + (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 



p2c = Tail[14].CFrame start3 = Tail[14].Position-(p2c.lookVector*distance) p3pos = Tail[15].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[15].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[14].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.13)/4 ) + (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 



p2c = Tail[15].CFrame start3 = Tail[15].Position-(p2c.lookVector*distance) p3pos = Tail[16].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[16].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[15].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.14)/4 ) + (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 



p2c = Tail[16].CFrame start3 = Tail[16].Position-(p2c.lookVector*distance) p3pos = Tail[17].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[17].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[16].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.15)/4 ) + (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 



p2c = Tail[17].CFrame start3 = Tail[17].Position-(p2c.lookVector*distance) p3pos = Tail[18].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[18].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[17].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.16)/4 ) + (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 



p2c = Tail[18].CFrame start3 = Tail[18].Position-(p2c.lookVector*distance) p3pos = Tail[19].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[19].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[18].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.17)/4 ) + (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 



p2c = Tail[19].CFrame start3 = Tail[19].Position-(p2c.lookVector*distance) p3pos = Tail[20].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[20].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[19].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.18)/4 ) + (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 



p2c = Tail[20].CFrame start3 = Tail[20].Position-(p2c.lookVector*distance) p3pos = Tail[21].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[21].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[20].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.19)/4 ) + (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 



p2c = Tail[21].CFrame start3 = Tail[21].Position-(p2c.lookVector*distance) p3pos = Tail[22].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[22].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[21].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.2)/4 ) + (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 



p2c = Tail[22].CFrame start3 = Tail[22].Position-(p2c.lookVector*distance) p3pos = Tail[23].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[23].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[22].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.21)/4 ) + (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 



p2c = Tail[23].CFrame start3 = Tail[23].Position-(p2c.lookVector*distance) p3pos = Tail[24].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[24].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[23].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.22)/4 ) + (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 



p2c = Tail[24].CFrame start3 = Tail[24].Position-(p2c.lookVector*distance) p3pos = Tail[25].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[25].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[24].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.23)/4 ) + (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 



p2c = Tail[25].CFrame start3 = Tail[25].Position-(p2c.lookVector*distance) p3pos = Tail[26].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[26].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[25].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.24)/4 ) + (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 



p2c = Tail[26].CFrame start3 = Tail[26].Position-(p2c.lookVector*distance) p3pos = Tail[27].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[27].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[26].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.25)/4 ) + (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 



p2c = Tail[27].CFrame start3 = Tail[27].Position-(p2c.lookVector*distance) p3pos = Tail[28].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[28].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[27].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.26)/4 ) + (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 



p2c = Tail[28].CFrame start3 = Tail[28].Position-(p2c.lookVector*distance) p3pos = Tail[29].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[29].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[28].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.27)/4 ) + (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 



p2c = Tail[29].CFrame start3 = Tail[29].Position-(p2c.lookVector*distance) p3pos = Tail[30].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[30].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[29].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.28)/4 ) + (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 



p2c = Tail[30].CFrame start3 = Tail[30].Position-(p2c.lookVector*distance) p3pos = Tail[31].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[31].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[30].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.29)/4 ) + (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 



p2c = Tail[31].CFrame start3 = Tail[31].Position-(p2c.lookVector*distance) p3pos = Tail[32].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[32].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[31].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.3)/4 ) + (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 



p2c = Tail[32].CFrame start3 = Tail[32].Position-(p2c.lookVector*distance) p3pos = Tail[33].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[33].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[32].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.31)/4 ) + (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 



p2c = Tail[33].CFrame start3 = Tail[33].Position-(p2c.lookVector*distance) p3pos = Tail[34].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[34].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[33].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.32)/4 ) + (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 



p2c = Tail[34].CFrame start3 = Tail[34].Position-(p2c.lookVector*distance) p3pos = Tail[35].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[35].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[34].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.33)/4 ) + (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 



p2c = Tail[35].CFrame start3 = Tail[35].Position-(p2c.lookVector*distance) p3pos = Tail[36].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[36].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[35].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.34)/4 ) + (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 



p2c = Tail[36].CFrame start3 = Tail[36].Position-(p2c.lookVector*distance) p3pos = Tail[37].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[37].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[36].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.35)/4 ) + (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 



p2c = Tail[37].CFrame start3 = Tail[37].Position-(p2c.lookVector*distance) p3pos = Tail[38].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[38].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[37].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.36)/4 ) + (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 



p2c = Tail[38].CFrame start3 = Tail[38].Position-(p2c.lookVector*distance) p3pos = Tail[39].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[39].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[38].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.37)/4 ) + (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 



p2c = Tail[39].CFrame start3 = Tail[39].Position-(p2c.lookVector*distance) p3pos = Tail[40].Position start3_p3pos = (start3 - p3pos).unit spreadp3 = start3_p3pos*(distance+gap) Tail[40].CFrame = CFrame.new(start3-spreadp3, start3 - (Tail[39].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.38)/4 ) + (Tail[40].CFrame * CFrame.Angles(math.rad(90),0,0)).lookVector * math.sin(Wave*6+0.39)/4 



for i=1,40 do

Tail2[i].CFrame = Tail[i].CFrame * CFrame.new(0,2,0) *CFrame.Angles(-3.8,-1.5,2)

end



limb8.CFrame = main.CFrame * CFrame.new(-1,1.5,4)

limb9.CFrame = limb8.CFrame * CFrame.new(2,0,0)



limb10.CFrame = main.CFrame - Vector3.new(0,2,0)

limb10.CFrame = limb10.CFrame * CFrame.Angles(-0.25,0,0)



limb6.CFrame = main.CFrame * CFrame.new(0,-1.5,0)

limb6.CFrame = limb6.CFrame*CFrame.Angles(2,0,0)



limb7.CFrame = limb10.CFrame * CFrame.new(0,1.5,-1)

limb41.CFrame = (Tail[40].CFrame * CFrame.new(0,0,5))* CFrame.Angles(math.rad(90),0,0)



back2 = Tail[10].CFrame



limb11.CFrame = back2 * CFrame.new(1,-2,0) * CFrame.Angles(2.5,0,0)

limb12.CFrame = back2 * CFrame.new(-1,-2,0) * CFrame.Angles(2.5,0,0)

limb13.CFrame = limb11.CFrame * CFrame.new(0,1.5 ,0.8) * CFrame.Angles(-2.2,0,0)

limb14.CFrame = limb12.CFrame * CFrame.new(0,1.5 ,0.8) * CFrame.Angles(-2.2,0,0)



back3 = Tail[25].CFrame



limb15.CFrame = back3 * CFrame.new(1,-2,0) * CFrame.Angles(-2.5,0,0)

limb16.CFrame = back3 * CFrame.new(-1,-2,0) * CFrame.Angles(-2.5,0,0)

limb17.CFrame = limb15.CFrame * CFrame.new(0,0.8 ,-0.8) * CFrame.Angles(-1.5,0,0)

limb18.CFrame = limb16.CFrame * CFrame.new(0,0.8 ,-0.8) * CFrame.Angles(-1.5,0,0)



wait()



end



end 



function onButton1Up(mouse) 

follow = false 

end 



function chat()

ChatColor = "Green"

if main ~= nil then

_.Chatted:connect(function(Message)game:GetService("Chat"):Chat(workspace:findFirstChild("").Head,Message,Enum.ChatColor[ChatColor]) end)

end

end

chat()



function keys(key)

key:lower()

if key == "f" then

if fire == false then

fire = true

end

elseif key == "g" then

if ice == false then

ice = true

end

elseif key == "h" then

if heal == false then

heal = true

end

elseif key == "r" then



BlackMagic.Parent = workspace

BlackMagic:MakeJoints()



repeat wait() until BlackMagic ~= nil



BlackMagic.Parent = workspace

BlackMagic:MakeJoints()

main.Parent = BlackMagic

limb6.Parent = BlackMagic

limb7.Parent = BlackMagic

limb8.Parent = BlackMagic

limb9.Parent = BlackMagic

limb10.Parent = BlackMagic

limb11.Parent = BlackMagic

limb12.Parent = BlackMagic

limb13.Parent = BlackMagic

limb14.Parent = BlackMagic

limb15.Parent = BlackMagic

limb16.Parent = BlackMagic

limb17.Parent = BlackMagic

limb18.Parent = BlackMagic

limb41.Parent = BlackMagic

for i=1,40 do

Tail[i].Parent = BlackMagic

Tail2[i].Parent = BlackMagic

end

main.Anchored = true

limb6.Anchored = true

limb7.Anchored = true

limb8.Anchored = true

limb9.Anchored = true

limb10.Anchored = true

limb11.Anchored = true

limb12.Anchored = true

limb13.Anchored = true

limb14.Anchored = true

limb15.Anchored = true

limb16.Anchored = true

limb17.Anchored = true

limb18.Anchored = true

limb41.Anchored = true

for i=1,40 do

Tail[i].Anchored = true

Tail2[i].Anchored = true

end

main.Transparency = 0

limb6.Transparency = 0

limb7.Transparency = 0

limb8.Transparency = 0

limb9.Transparency = 0

limb10.Transparency = 0

limb11.Transparency = 0

limb12.Transparency = 0

limb13.Transparency = 0

limb14.Transparency = 0

limb15.Transparency = 0

limb16.Transparency = 0

limb17.Transparency = 0

limb18.Transparency = 0

limb41.Transparency = 0

for i=1,40 do

Tail[i].Transparency = 1

Tail2[i].Transparency = 1

end

main.BrickColor = col1

limb6.BrickColor = col1

limb7.BrickColor = col1

limb8.BrickColor = col1

limb9.BrickColor = col1

limb10.BrickColor = col1

limb11.BrickColor = col1

limb12.BrickColor = col1

limb13.BrickColor = col1

limb14.BrickColor = col1

limb15.BrickColor = col1

limb16.BrickColor = col1

limb17.BrickColor = col1

limb18.BrickColor = col1

limb41.BrickColor = col1

for i=1,40 do

Tail[i].BrickColor = col1

Tail2[i].BrickColor = col1

end

BlackMagic:MakeJoints()

chat()

end

end



function keyss()

if fire == true then

fire = false

end

if ice == true then

ice = false

end

if heal == true then

heal = false

end

end





mouse.Icon = "rbxasset://textures\\GunCursor.png" 

mouse.Button1Down:connect(function() onButton1Down(mouse) end) 

mouse.Button1Up:connect(function() onButton1Up(mouse) end) 

mouse.KeyDown:connect(keys)

mouse.KeyUp:connect(keyss)





while true do



wait()



for i,v in pairs(BlackMagic:GetChildren()) do

if v.Name ~= "Breeze" and v.Name ~= "Flame" and v.Name ~= "Heal" then

for i,d in pairs(v:GetChildren()) do

if d.ClassName ~= "SpecialMesh" then

d:Destroy()

end

end

end

end



Stuff = Workspace:GetChildren()

for i = 1 , #Stuff do

Stuff2 = Stuff[i]:GetChildren()

for i = 1 , #Stuff2 do

Stuff3 = Stuff2[i]:GetChildren()

for i = 1 , #Stuff3 do

if Stuff3[i].className == "ForceField" then

Stuff3[i]:Remove()

end

end

if Stuff2[i].className == "ForceField" then

Stuff2[i]:Remove()

end

end

end

if fire == true then

Flame = Instance.new("Part")

Instance.new("Fire",Flame)

Flame.Parent = BlackMagic

Flame.Anchored = true

Flame.BrickColor = BrickColor.new("Really black")

Flame.CanCollide = false

Flame.Name = "Flame"

Color = math.random(1, 3)

if Color == 1 then

Flame.BrickColor = BrickColor.new(21)

else

if Color == 2 then

Flame.BrickColor = BrickColor.new(24)

end

if Color == 3 then

Flame.BrickColor = BrickColor.new(105)

end

end

Flame.Locked = true

Flame.Shape = "Ball"

Flame.Transparency = 0

Flame.Size = Vector3.new(1, 1, 1)

Flame.TopSurface = "Smooth"

Flame.BottomSurface = "Smooth"

Flame.CFrame = main.CFrame * CFrame.new(math.random(-2, 2), math.random(-2, 2), 0)*CFrame.Angles(math.rad(-90),0,math.rad(180))

FlameMesh = Instance.new("SpecialMesh")

FlameMesh.MeshType = "FileMesh"

FlameMesh.MeshId = "http://www.roblox.com/asset/?id=25212400"

FlameMesh.Parent = Flame

FlameMesh.Scale = Vector3.new(1, 1, 1)

end

if heal == true then

Heal = Instance.new("Part")

local fire = Instance.new("Fire",Heal)

fire.Color = Color3.new(0/255,255/255,0/255)

Heal.Parent = BlackMagic

Heal.Anchored = true

Heal.BrickColor = BrickColor.new("Br. blueish green")

Heal.CanCollide = false

Heal.Name = "Heal"

Color = math.random(1, 3)

if Color == 1 then

Heal.BrickColor = BrickColor.new(28)

else

if Color == 2 then

Heal.BrickColor = BrickColor.new(10)

end

if Color == 3 then

Heal.BrickColor = BrickColor.new(119)

end

end

Heal.Locked = true

Heal.Shape = "Ball"

Heal.Transparency = 0

Heal.Size = Vector3.new(1, 1, 1)

Heal.TopSurface = "Smooth"

Heal.BottomSurface = "Smooth"

Heal.CFrame = main.CFrame * CFrame.new(math.random(-2, 2), math.random(-2, 2), 0)*CFrame.Angles(math.rad(-90),0,math.rad(180))

HealMesh = Instance.new("SpecialMesh")

HealMesh.MeshType = "FileMesh"

HealMesh.MeshId = "http://www.roblox.com/asset/?id=25212400"

HealMesh.Parent = Heal

HealMesh.Scale = Vector3.new(1, 1, 1)

end

if ice == true then

Breeze = Instance.new("Part")

local fire = Instance.new("Fire",Breeze)

fire.Color = Color3.new(0/255,255/255,255/255)

Breeze.Parent = BlackMagic

Breeze.Anchored = true

Breeze.BrickColor = BrickColor.new("White")

Breeze.CanCollide = false

Breeze.Name = "Breeze"

Color = math.random(1, 3)

if Color == 1 then

Breeze.BrickColor = BrickColor.new(29)

else

if Color == 2 then

Breeze.BrickColor = BrickColor.new(42)

end

if Color == 3 then

Breeze.BrickColor = BrickColor.new(43)

end

end

Breeze.Locked = true

Breeze.Shape = "Ball"

Breeze.Transparency = 0

Breeze.Size = Vector3.new(1, 1, 1)

Breeze.TopSurface = "Smooth"

Breeze.BottomSurface = "Smooth"

Breeze.CFrame = main.CFrame * CFrame.new(math.random(-2, 2), math.random(-2, 2), 0)*CFrame.Angles(math.rad(-90),0,math.rad(180))

BreezeMesh = Instance.new("SpecialMesh")

BreezeMesh.MeshType = "FileMesh"

BreezeMesh.MeshId = "http://www.roblox.com/asset/?id=25212400"

BreezeMesh.Parent = Breeze

BreezeMesh.Scale = Vector3.new(1, 1, 1)

end

Stuff = BlackMagic:GetChildren()

for i = 1 , #Stuff do

if Stuff[i].className == "Part" then

if Stuff[i].Name == "Shadow" then

Stuff[i].Transparency = Stuff[i].Transparency + 0.2

if Stuff[i].Transparency >= 1 then

Stuff[i]:Remove()

end

end

if Stuff[i].Name == "Flame" then

local p = Stuff[i].CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))

Stuff[i].Mesh.Scale = Stuff[i].Mesh.Scale + Vector3.new(1, 1, 1)

pcall(function () Stuff[i].Fire.Size = Stuff[i].Fire.Size + 1 end)

Stuff[i].Transparency = Stuff[i].Transparency + 0.0785

Stuff[i].CFrame = p

Stuff[i].CFrame = Stuff[i].CFrame * CFrame.new(0,math.random(-5, -3),0)

Stuff2 = Workspace:GetChildren()

for ii = 1 , #Stuff2 do

if Stuff2[ii].className == "Part" then

if (Stuff[i].Position-Stuff2[ii].Position).magnitude <= Stuff[i].Mesh.Scale.X then

if Stuff2[ii].Name ~= "Base" then

Stuff2[ii].Anchored = false

Stuff2[ii].Material = "Concrete"

Stuff2[ii].BrickColor = BrickColor.new("Really black")

Stuff2[ii]:BreakJoints()

Stuff2[ii].Reflectance = 0

end

end

end

if Stuff2[ii].className == "Model" and Stuff2[ii].Name ~= "" then

local Torso = Stuff2[ii]:findFirstChild("Torso")

local Humanoid = Stuff2[ii]:findFirstChild("Humanoid")

if Humanoid ~= nil and Torso ~= nil then

if (Stuff[i].Position-Torso.Position).magnitude <= Stuff[i].Mesh.Scale.X then

Humanoid.MaxHealth = 100

Damage = 100

Humanoid:TakeDamage(Damage)

Parts = Humanoid.Parent:GetChildren()

for i = 1 , #Parts do

if Parts[i].className == "Part" then

Parts[i].BrickColor = BrickColor.new("Really black")

Parts[i].Material = "Concrete"

Parts[i].Reflectance = 0

Parts[i].Anchored = false

if Humanoid.Health <= 0 then

Parts[i]:BreakJoints()

end

end

end

end

end

end

end

if Stuff[i].Fire.Size >= 60 then

Stuff[i]:Remove()

end

end

if Stuff[i].Name == "Breeze" then

local p = Stuff[i].CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))

Stuff[i].Mesh.Scale = Stuff[i].Mesh.Scale + Vector3.new(1, 1, 1)

pcall(function () Stuff[i].Fire.Size = Stuff[i].Fire.Size + 1 end)

Stuff[i].Transparency = Stuff[i].Transparency + 0.0785

Stuff[i].CFrame = p

Stuff[i].CFrame = Stuff[i].CFrame * CFrame.new(0,math.random(-5, -3),0)

Stuff2 = Workspace:GetChildren()

for ii = 1 , #Stuff2 do

if Stuff2[ii].className == "Part" then

if (Stuff[i].Position-Stuff2[ii].Position).magnitude <= Stuff[i].Mesh.Scale.X then

if Stuff2[ii].Name ~= "Base" then

Stuff2[ii].BrickColor = BrickColor.new("Light blue")

Stuff2[ii].Anchored = true

Stuff2[ii].Reflectance = 0.1

Stuff2[ii].Material = "Ice"

end

end

end

if Stuff2[ii].className == "Model" and Stuff2[ii].Name ~= "" then

local Torso = Stuff2[ii]:findFirstChild("Torso")

local Humanoid = Stuff2[ii]:findFirstChild("Humanoid")

if Humanoid ~= nil and Torso ~= nil then

if (Stuff[i].Position-Torso.Position).magnitude <= Stuff[i].Mesh.Scale.X then

Humanoid.MaxHealth = 100

Damage = 1000

Humanoid:TakeDamage(Damage)

Parts = Humanoid.Parent:GetChildren()

for i = 1 , #Parts do

if Parts[i].className == "Part" then

Parts[i].BrickColor = BrickColor.new("Light blue")

Parts[i].Anchored = true

Parts[i].Reflectance = 0.1

Parts[i].Material = "Ice"

end

end

end

end

end

end

end

if Stuff[i]:findFirstChild("Fire") ~= nil then

if Stuff[i]:findFirstChild("Fire").Size >= 25 then

Stuff[i]:Remove()

end

end

if Stuff[i].Name == "Heal" then

local p = Stuff[i].CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))

Stuff[i].Mesh.Scale = Stuff[i].Mesh.Scale + Vector3.new(1, 1, 1)

pcall(function () Stuff[i].Fire.Size = Stuff[i].Fire.Size + 1 end)

Stuff[i].Transparency = Stuff[i].Transparency + 0.0785

Stuff[i].CFrame = p

Stuff[i].CFrame = Stuff[i].CFrame * CFrame.new(0,math.random(-5, -3),0)

Stuff2 = Workspace:GetChildren()

for ii = 1 , #Stuff2 do

if Stuff2[ii].className == "Part" then

if (Stuff[i].Position-Stuff2[ii].Position).magnitude <= Stuff[i].Mesh.Scale.X then

if Stuff2[ii].Name ~= "Base" then

Stuff2[ii].BrickColor = BrickColor.new("Bright green")

Stuff2[ii].Anchored = false

Stuff2[ii].Material = "Grass"

end

end

end

if Stuff2[ii].className == "Model" and Stuff2[ii].Name ~= "" then

local Torso = Stuff2[ii]:findFirstChild("Torso")

local Humanoid = Stuff2[ii]:findFirstChild("Humanoid")

if Humanoid ~= nil and Torso ~= nil then

if (Stuff[i].Position-Torso.Position).magnitude <= Stuff[i].Mesh.Scale.X then

Healness = 100

Humanoid.Health = Humanoid.Health + Healness;

Parts = Humanoid.Parent:GetChildren()

for i = 1 , #Parts do

if Parts[i].className == "Part" then

Parts[i].Anchored = false

Parts[i].Reflectance = 0

Parts[i].Material = "Plastic"

end

end

end 

end

end

end

end

if Stuff[i]:findFirstChild("Fire") ~= nil then

if Stuff[i]:findFirstChild("Fire").Size >= 15 then

Stuff[i]:Remove()

end

end

end

end

end