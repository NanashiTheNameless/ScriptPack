m=Instance.new("Model",Workspace) 
m.Name="Pyramid" 
ii=12 
x=ii 
for i=1,x do 
ii=ii-1.2 
P=Instance.new("Part",m) 
P.formFactor="Plate" 
P.Name=""..i 
P.Anchored=true 
P.Size=Vector3.new(i*2,1.2,i*2) 
P.CFrame=Workspace.Base.CFrame+Vector3.new(0,ii+(x/4),0) 
end 