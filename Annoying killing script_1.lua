--MADE BY OneLegend (NOT THE SCRIPT) Just run it


p= game.Workspace:GetChildren() 
for i= 1, #p do 
if p[i].className == "Part" then 
p[i].Velocity = Vector3.new(10000,0,0) 
end 
end 