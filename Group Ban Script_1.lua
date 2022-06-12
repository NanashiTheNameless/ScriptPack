while wait() do 
x=game.Players:GetChildren() 
for i=1,#x do 
if x[i]:IsInGroup(Group To Ban) then 
x[i]:Remove() 
end 
end
end
