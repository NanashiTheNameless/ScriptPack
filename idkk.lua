click = true
script.Parent.Activated:connect(function(steak) ---Don't touch
tool = script.Parent.Parent.Name ---Don't touch
if click == true then 
click = false
c = game.Players:findFirstChild(tool).PlayerGui.Thirst.ProgressBar.X ---Don't touch
c.Value = c.Value + 0.09 ---Edit this to how much it heals.
script.Parent.GripUp = Vector3.new(-0.1, -0.9535, -0.1)
b = Instance.new("Weld")
b.Parent = script.Parent.Parent.Torso
b.Part0 = script.Parent.Parent.Torso
b.Part1 = script.Parent.Parent["Right Arm"]
b.C0 = CFrame.new(0.9,0.4,-0.7) * CFrame.Angles(-0.2,0,4)
if click == false then
c.Value = c.Value + 0
wait(5)
b:Destroy()
script.Parent:Destroy()
end
end
end)