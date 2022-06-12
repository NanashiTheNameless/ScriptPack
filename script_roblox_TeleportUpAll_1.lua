Teleport Up All 
============================== 
p= game.Players:GetChildren() 
for i= 1, #p do 
if p[i] ~= --Put name here then 
p[i].Character.Torso.CFrame = CFrame.new(0,102050,0) 
end 