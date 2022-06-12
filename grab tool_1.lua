
if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Tool" 
bin.Parent = game.Players.acb227.Backpack 
script.Parent = bin 
end 

bin = script.Parent 

me = Game.Players.acb227 

arm1 = Instance.new("Weld") 
arm1.Parent = me.Character["Right Arm"] 
arm1.Part0 = me.Character["Right Arm"] 
arm1.Part1 = me.Character.Torso 
arm1.C0 = CFrame.new() 
arm1.C1 = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  

arm2 = Instance.new("Weld") 
arm2.Parent = me.Character["Left Arm"] 
arm2.Part0 = me.Character["Left Arm"] 
arm2.Part1 = me.Character.Torso 
arm2.C0 = CFrame.new() 
arm2.C1 = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  

function onButton1Down(mouse) 
print("hai") 
end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "q" then 
arm1.C1 = CFrame.new(1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
arm2.C1 = CFrame.new(-1.5, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)  
end 
if key == "e" then 
arm1.C1 = CFrame.new(1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  
arm2.C1 = CFrame.new(-1.5, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)  
end 
if key == "r" then 
mouse.Target:BreakJoints() 
end 
if key == "t" then 
mouse.Target.CFrame = mouse.Target.CFrame * CFrame.new(0, 15, 0)
end 
if key == "y" then 
arm1.C1 = CFrame.new(1.2, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, -0.5)  
arm2.C1 = CFrame.new(-1.2, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, 0.5)  
end 
if key == "u" then 
arm1.C1 = CFrame.new(1.2, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, -1)  
arm2.C1 = CFrame.new(-1.2, 0.5, -0.5) * CFrame.fromEulerAnglesXYZ(1.37, 0, 1)  
end 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end)  