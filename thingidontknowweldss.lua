wait() 
Tool=script.Parent 
CP,Torso,g=nil,nil,nil 
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
getPos=function(Pos,TorsoPos) 
return Vector3.new(Pos.x,TorsoPos.y,Pos.z) 
end 
Turn=function(mouse,Torso,Gyro) 
g.cframe=CFrame.new(Torso.Position,getPos(mouse.Hit.p,Torso.Position)) 
offset=(Torso.Position.y-mouse.Hit.p.y)/60 
mag=(Torso.Position-mouse.Hit.p).magnitude/80 
offset=offset/mag 
neck=Torso.Neck 
neck.C0=necko*CFrame.fromEulerAnglesXYZ(offset,0,0) 
arm=Torso:FindFirstChild("Right Shoulder") 
if arm~=nil then 
arm.C0=CFrame.new(1, 0.5, 0, 0, 0, 1, -6.48200512e-007, 1.00000274, 0, -1.00000274, -6.48200512e-007, 0)*CFrame.fromEulerAnglesXYZ(0,0,-offset) 
end 
end 
Equi=function(mouse) 
wait(.2) 
CP=Tool.Parent 
Torso=CP.Torso 
g=Instance.new("BodyGyro") 
g.P=18000 
g.D=600 
g.maxTorque=Vector3.new(80000,80000000,80000)*50000000000000000000000000 
g.cframe=Torso.CFrame 
--g.Parent=Torso 
while true do 
if Tool.Parent.className~="Model" then 
break 
end 
Turn(mouse,Torso,g) 
wait() 
end 
Torso.Neck.C0=necko 
g:Remove() 
end 
Tool.Equipped:connect(Equi)