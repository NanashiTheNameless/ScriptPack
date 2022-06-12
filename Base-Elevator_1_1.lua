if game.Workspace:findFirstChild("Elevator") then 
game.Workspace:findFirstChild("Elevator"):Remove() 
end
color1 = "Dark grey" 
color2 ="Really black" 
mod = Instance.new("Model") 
mod.Parent = game.Workspace 
mod.Name = "Elevator" 
hum = Instance.new("Humanoid") 
hum.MaxHealth = 0 
hum.PlatformStand=true 
hum.Parent = mod 
eng = Instance.new("Part") 
eng.Parent = mod 
eng.Name = "Head" 
eng.Size = Vector3.new(12,1,12) 
eng.BrickColor = BrickColor.new(color1) 
eng.TopSurface = "Smooth" 
eng.BottomSurface = "Smooth" 
eng.Position = Workspace.Base.Position + Vector3.new(54, 100, -12.5) 
control = Instance.new("VehicleSeat") 
control.Parent = mod 
control.Size = Vector3.new(2,1,2) 
control.BrickColor = BrickColor.new("Lime green") 
control.TopSurface = "Smooth" 
control.BottomSurface = "Smooth" 
control.HeadsUpDisplay = false 
control:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = control 
weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(0,math.pi,0) 
s1 = Instance.new("Seat") 
s1.Parent = mod 
s1.Size = Vector3.new(2,1,2) 
s1.BrickColor = BrickColor.new(color2) 
s1.BottomSurface = "Smooth" 
s1:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s1 
weld.C0 = CFrame.new(5,1,5) * CFrame.Angles(0,math.pi,0) 
s2 = Instance.new("Seat") 
s2.Parent = mod 
s2.Size = Vector3.new(2,1,2) 
s2.BrickColor = BrickColor.new(color2) 
s2.BottomSurface = "Smooth" 
s2:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s2 
weld.C0 = CFrame.new(5,1,-5) * CFrame.Angles(0,math.pi,0) 
s3 = Instance.new("Seat") 
s3.Parent = mod 
s3.Size = Vector3.new(2,1,2) 
s3.BrickColor = BrickColor.new(color2) 
s3.BottomSurface = "Smooth" 
s3:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s3 
weld.C0 = CFrame.new(-5,1,-5) * CFrame.Angles(0,math.pi,0) 
s4 = Instance.new("Seat") 
s4.Parent = mod 
s4.Size = Vector3.new(2,1,2) 
s4.BrickColor = BrickColor.new(color2) 
s4.BottomSurface = "Smooth" 
s4:BreakJoints() 
weld = Instance.new("Weld") 
weld.Parent = eng 
weld.Part0 = eng 
weld.Part1 = s4 
weld.C0 = CFrame.new(-5,1,5) * CFrame.Angles(0,math.pi,0) 




-------AI program--------


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
hov.position = Vector3.new(0,9,0) 
bg = Instance.new("BodyGyro") 
bg.Parent = eng 
bg.P = 8000
bg.maxTorque = Vector3.new(bg.P,bg.P,bg.P) 
parts = mod:GetChildren() 
for i = 1, #parts do 
if parts[i].className == "Part" or parts[i].className == "WedgePart" then 
parts[i].Locked = true 
end 
end 


while true do 
wait() 
bg.cframe=CFrame.new(eng.Position, eng.Position + Vector3.new(-10,0,0))
if control.Throttle == 1 then 
hov.position = hov.position+Vector3.new(0,0.5,0) 
end 
if control.Throttle == -1 then 
hov.position = hov.position+Vector3.new(0,-0.5,0) 
end 
if hov.position.Y > 30  then 
hov.position = hov.position+Vector3.new(0,-0.5,0) 
end 
if hov.position.Y < 1.2 then 
hov.position = hov.position+Vector3.new(0,0.5,0) 
end 

end 
