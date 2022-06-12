mp = Game.Players.yfc
function onChatted(msg) 
if msg == "noob" then 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Your right!!" 
wait(3) 
m:remove() 
end 
if msg == "thanks" then 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "np, you rock anyways!" 
wait(3) 
m:remove() 
end 
if msg == "bored" then 
pl = mp.Name 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Guys play with " ..pl.. "!!!" 
wait(3) 
m:remove() 
end 
if msg == "reset" then 
mp.Character:BreakJoints()
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "anything for you.." 
wait(3) 
m:remove() 
end 
if msg == "no thanks" then 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Ok not a problem." 
wait(3) 
m:remove() 
end 
if msg == "make a brick" then 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
Instance.new("Part", workspace).Name = "PARTINATOR" 
m.Text = "Ok not a problem." 
wait(3) 
m:remove() 
end 
if msg == "up" then 
mp.Character.Torso.CFrame = mp.Character.Torso.CFrame + Vector3.new(0, 5, 0)
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Ok not a problem." 
wait(3) 
m:remove() 
end 
if msg == "down" then 
mp.Character.Torso.CFrame = mp.Character.Torso.CFrame + Vector3.new(0, -5, 0)
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Ok not a problem." 
wait(3) 
m:remove() 
end 
if msg == "faster" then 
mp.Character.Humanoid.WalkSpeed = mp.Character.Humanoid.WalkSpeed + 10 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Ok not a problem." 
wait(3) 
m:remove() 
end 
if msg == "slower" then 
mp.Character.Humanoid.WalkSpeed = mp.Character.Humanoid.WalkSpeed - 10 
m = Instance.new("Message") 
m.Parent = Game.Workspace 
m.Text = "Ok not a problem." 
wait(3) 
m:remove() 
end 
end 
mp.Chatted:connect(onChatted) --lego