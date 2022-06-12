c = Instance.new("Hint")  --ADD YOU epicikr ON LINE 2,4,AND 6,WHERE IT SAYS "epicikr"
c.Text = "If you ban epicikr the server will end."
c.Parent = game.Workspace 
text = {"epicikr has been kicked, banned, or he just left.   SRRY IF HE JUST LEFT.   Crashing in, 3, 2, 1", "", "", ""} 
while wait(5) do 
if not game.Players:FindFirstChild("epicikr") then 
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