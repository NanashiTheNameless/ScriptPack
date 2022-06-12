pcall(function() Workspace.Stairs:Remove() end)
m=Instance.new("Model",Workspace) 
m.Name="Stairs" 
Color1="Medium stone grey" 
Amount=20 
Sets=2 
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
p.CFrame = CFrame.new(0,0,-20+u*20)*(Workspace.Base.CFrame+Vector3.new(2*i,Workspace.Base.Size.Y/2+p.Size.Y/2-0.5+0.5*i,0)) 
Instance.new("BlockMesh",p)
if i~=1 then 
p2=Instance.new("Part",m) 
p2.formFactor="Custom" 
p2.Size=Vector3.new(0.2,0.6,20) 
p2.Anchored=true 
p2.TopSurface="Smooth" 
p2.BottomSurface="Smooth" 
p2.Transparency=0.2
p2.Reflectance=0.2
p2.CFrame = p.CFrame+Vector3.new(-p.Size.X/2-0.1,-p.Size.Y,0) 
Instance.new("BlockMesh",p2)
p3=Instance.new("Part",m) 
p3.formFactor="Custom" 
p3.Size=Vector3.new(2,p.CFrame.Y-0.8,0.2) 
p3.Anchored=true 
p3.CanCollide=false 
p3.TopSurface="Smooth" 
p3.BottomSurface="Smooth" 
p3.Transparency=0.2
p3.Reflectance=0.2
p3.CFrame = p.CFrame+Vector3.new(0,-p.CFrame.Y/2+0.3,-p.Size.Z/2+0.1) 
Instance.new("BlockMesh",p3)
p4=Instance.new("Part",m) 
p4.formFactor="Custom" 
p4.Size=Vector3.new(2,p.CFrame.Y-0.8,0.2) 
p4.Anchored=true 
p4.CanCollide=false 
p4.TopSurface="Smooth" 
p4.BottomSurface="Smooth" 
p4.Transparency=0.2
p4.Reflectance=0.2
p4.CFrame = p.CFrame+Vector3.new(0,-p.CFrame.Y/2+0.3,p.Size.Z/2-0.1) 
Instance.new("BlockMesh",p4)
end 
if i==x then 
p5=Instance.new("Part",m) 
p5.formFactor="Custom" 
p5.Size=Vector3.new(0.2,p.CFrame.Y-0.8,19.6) 
p5.Anchored=true 
p5.CanCollide=false 
p5.TopSurface="Smooth" 
p5.BottomSurface="Smooth" 
p5.Transparency=0.2
p5.Reflectance=0.2
p5.CFrame = p.CFrame+Vector3.new(p.Size.X/2-0.1,-p.CFrame.Y/2+0.3,0) 
Instance.new("BlockMesh",p5)
end 
end 
end 
script.Parent = m
print(#m:GetChildren() .." Parts")
for i,o in pairs(m:GetChildren()) do 
if o.Name=="Part" then 
o.BrickColor=BrickColor.new(Color1) 
end 
end 
function onTouched(part) 
for o=1,#m:GetChildren() do 
if o.Name=="Part" then 
for i=1,#o do 
if i % 2 == 0 then 
o.BrickColor = BrickColor.new("Really red") 
wait(0.5) 
o.BrickColor = BrickColor.new(Color1) 
else 
o.BrickColor = BrickColor.new("Really blue") 
wait(0.5) 
o.BrickColor = BrickColor.new(Color1) 
end 
end 
end 
end 
end 
o.Touched:connect(onTouched)
