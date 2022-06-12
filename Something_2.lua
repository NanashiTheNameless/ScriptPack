equip = function(mouse)
--pcall(function() char.Torso.Transparency = 1 end)
pcall(function() char["Right Arm"].Transparency = 1 end)
pcall(function() char["Left Arm"].Transparency = 1 end)
farm.Transparency = 0
farm2.Transparency = 0
--torso.Transparency = 0
local bg = Instance.new("BodyGyro",char.Torso)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
arm1.Part0 = char.Torso
arm1.Part1 = farm
arm1.C0 = CFrame.new(1.5,0,0)
for i = 0, 1, 0.1 do 
arm1.C0 = CFrame.new(1.5,i,0) * CFrame.Angles(math.rad(225*i), 0, math.rad(-25*i)) 
wait() 
end 
w1.Part1 = farm
w1.C0 = CFrame.Angles(0,0,0)
w1.C1 = CFrame.new(-1, -1.2, 0) * CFrame.Angles(8, math.rad(200), 0)  --8.7,math.rad(225)
for i = 0, 1, 0.1 do 
arm1.C0 = CFrame.new(1.5,i,0) * CFrame.Angles(math.rad(225-135*i), 0, math.rad(-25+25*i)) 
wait() 
end 
arm2.Part0 = char.Torso
arm2.Part1 = farm2
arm2.C0 = CFrame.new(-1.3,0,-.5) * CFrame.Angles(0,0,0)
arm1.C0 = CFrame.new(1,0,-.45) * CFrame.Angles(0,0,0)
coroutine.wrap(function() c0(arm2,.5,40,0,-20) end)()
coroutine.wrap(function() c0(arm1,.5,40,0,-20) end)()
coroutine.wrap(function() c0(hw,.5,0,90,0) end)()
mouse.Button1Down:connect(function()
bg.cframe = CFrame.new(char.Torso.Position,Vector3.new(mouse.Hit.p.X,char.Torso.Position.Y,mouse.Hit.p.Z))
end)
 
end