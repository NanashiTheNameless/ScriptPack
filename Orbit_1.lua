while true do 
p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i].Name ~= "ic3w0lf589" then 
b = Instance.new("BodyPosition") 
b.Parent = p[i].Character.Torso 
b.maxForce = Vector3.new(600000000,6000000000,6000000000) 
b.position = game.Workspace.ic3w0lf589.Torso.Position 
wait(0.1) 
end 
end 
end