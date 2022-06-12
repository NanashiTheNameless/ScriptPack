color1 = "Dark grey" 
color2 ="Really black" 
me = "lordsheen" 
lord1 = game.Players[me]
lord2 = lord1.Character
mod = Instance.new("Model") 
mod.Parent = lord2
mod.Name = "seat" 
eng = Instance.new("Part") 
eng.Parent = mod 
eng.Name = "Head" 
eng.Size = Vector3.new(12,1,12) 
eng.BrickColor = BrickColor.new(color1) 
eng.TopSurface = "Smooth" 
eng.BottomSurface = "Smooth" 
eng.Transparency = 1 
eng.CanCollide = false 
eng.Position = lord1.Character.Torso.Position + Vector3.new(0,100,0) 
control = Instance.new("VehicleSeat") 
control.Parent = mod 
control.Size = Vector3.new(2,1,2) 
control.BrickColor = BrickColor.new("Really red") 
control.TopSurface = "Smooth" 
control.BottomSurface = "Smooth" 
control.HeadsUpDisplay = true 
control:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = control 
weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi,0) 



-------AI program--------by zethal


---Driving Systems--- 
bv = Instance.new("BodyVelocity") 
bv.Parent = eng 
bv.maxForce = Vector3.new(math.huge,0,math.huge) 
bv.velocity = Vector3.new(0,-5,0) 
bav = Instance.new("BodyAngularVelocity") 
bav.Parent = eng 
bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bav.angularvelocity = Vector3.new(0,0,0) 
hov = Instance.new("BodyPosition") 
hov.Name = "Hover" 
hov.Parent = eng 
hov.maxForce = Vector3.new(0,math.huge,0) 
hov.position = Vector3.new(0,2,0) 
bg = Instance.new("BodyGyro") 
bg.Parent = eng 
bg.maxTorque = Vector3.new(math.huge,0,math.huge) 
bg.P = 3e+003 
bg.D = 500 
parts = mod:GetChildren() 
for i = 1, #parts do 
if parts[i].className == "Part" or parts[i].className == "WedgePart" then 
parts[i].Locked = true 
end 
end 


while true do 
wait(0) 
if control.Throttle == 1 then 
bv.velocity = eng.CFrame.lookVector*-50.5 
end 
if control.Throttle == -1 then 
bv.velocity = eng.CFrame.lookVector*50.5 
end 
if control.Throttle == 0 then 
bv.velocity = Vector3.new(0,0,0) 
end 
if control.Steer == 1 then 
bav.angularvelocity = Vector3.new(0,-2,0) 
end 
if control.Steer == -1 then 
bav.angularvelocity = Vector3.new(0,2,0) 
end 
if control.Steer == 0 then 
bav.angularvelocity = Vector3.new(0,0,0) 
end 

end 