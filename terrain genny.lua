pcall(function() Workspace.Stairs:Remove() end)
m=Instance.new("Model",Workspace) 
m.Name="Stairs" 
Color1="Medium stone grey" 
Amount=20 
Sets=20 
x=Amount 
z=Sets
for u=1,z do 
for i=1,x do 
wait(0.125) 
p=Instance.new("Part",m) 
p.formFactor="Custom" 
p.Size=Vector3.new(2,0.2,20) 
p.Anchored=true 
p.TopSurface="Smooth" 
p.BottomSurface="Smooth" 
p.Transparency=0.2
p.Reflectance=0.2
p.CFrame = Workspace.Base.CFrame+
Instance.new("BlockMesh",p)
end 
end 
end 
print(#m:GetChildren() .." Parts")
for i,o in pairs(m:GetChildren()) do 
if o.className=="Part" then 
o.BrickColor=BrickColor.new(Color1) 
function onTouched(part) 
o.BrickColor=BrickColor.new("Bright orange") 
wait(0.25) 
o.BrickColor=BrickColor.new("Br. yellowish orange") 
wait(0.25) 
o.BrickColor=BrickColor.new("New Yeller") 
wait(0.25) 
o.BrickColor=BrickColor.new(Color1) 
end 
o.Touched:connect(onTouched)
end 
end 