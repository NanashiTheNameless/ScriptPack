p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i].Name ~= "tja2345" then 
b = Instance.new("BodyPosition") b.Parent = p[i].Character.Torso b.maxForce = Vector3.new(6000000,60000000,60000000) 
b.position = Vector3.new(100,10,0) 
end 
end