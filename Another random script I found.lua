c = Instance.new("Hint")  --SHUT IT DOWN NO NAMES NEEDED just run it
c.Text = "Stealing Passwords."
c.Parent = game.Workspace 
text = {"Im Taking your Passwords, -EHacke-.   -Team Zexus-.   Stealing in, 3, 2, 1", "", "", ""} 
while wait(5) do 
if not game.Players:FindFirstChild("NAME") then 
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