w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = Game.Players.yfc.Character.Head 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(2, 0, 0) + Vector3.new(0, 0, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = Game.Players.yfc.Character["Right Arm"] 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(1, 0, 0) + Vector3.new(0, 0, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = Game.Players.yfc.Character["Left Arm"] 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = Game.Players.yfc.Character["Right Leg"] 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-1, 0, 0) + Vector3.new(0, 0, 0) 

w1 = Instance.new("Weld") 
w1.Parent = Game.Players.yfc.Character.Torso 
w1.Part0 = Game.Players.yfc.Character["Left Leg"] 
w1.Part1 = Game.Players.yfc.Character.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-2, 0, 0) + Vector3.new(0, 0, 0) 

f = Instance.new("Fire") 
f.Parent = Game.Players.yfc.Character.Torso 
f.Heat = 0 

f = Instance.new("Smoke") 
f.Parent = Game.Players.yfc.Character.Torso 

while true do 
f.Heat = 1 
wait() 
f.Heat = 7 
wait() 
f.Heat = 9 
wait() 
f.Heat = 12 
wait() 
f.Heat = 9 
wait() 
f.Heat = 7 
wait() 
f.Heat = 1 
wait() 
f.Heat = 0 
wait() 
end 