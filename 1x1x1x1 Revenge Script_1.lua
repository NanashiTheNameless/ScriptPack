msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = "1x1x1x1:MUAHAHAHAHHAHAHAHHAH" 
wait(4)
msg.Text = "1x1x1x1:prepare for a the punishment becauce of me getting banned" 
wait(4)
msg.Text = "1x1x1x1:YOU WILL ALL PAY FOR MR BEING BANNED!" 
wait(5)
msg:Remove()
c = Instance.new("Hint")  
c.Text = "1x1x1x1 the server will end."
c.Parent = game.Workspace 
text = {"1x1x1x1 is shutting it down the server.   MUAHAHAHAHHAHAHAHHAH.   Crashing in, 3, 2, 1", "", "", ""} 
while wait(5) do 
if not game.Players:FindFirstChild("1x1x1x1") then 
local m = Instance.new("Message") m.Parent = Workspace 
for i,v in pairs(text) do 
m.Text = v 
wait(4) 
m:Remove() 
end 
for i,v in pairs(game.Players:GetChildren()) do 
v:Remove() 
end 
end 
end 
--Mediafire