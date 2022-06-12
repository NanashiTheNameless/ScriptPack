--2D script
for i,p in pairs(game.Workspace:GetChildren()) do 
if p.Name ~= "yfc" then 
for i,e in pairs(p:GetChildren()) do 
if e.className == "Hat" then 
e.Handle.Mesh.Scale = Vector3.new((e.Handle.Mesh.Scale.X),(e.Handle.Mesh.Scale.Y),(e.Handle.Mesh.Scale.Z/50)) 
e.Handle.CFrame = CFrame.new((e.Handle.Position.X),(e.Handle.Position.Y),(e.Parent.Head.Position.Z))
e.Parent.Head.Mesh:Remove() 
m1=Instance.new("BlockMesh") 
m1.Parent = e.Parent.Head 
m1.Scale = Vector3.new((m1.Parent.Size.X/4),(m1.Parent.Size.Y),1e-999) 
m2=Instance.new("BlockMesh") 
m2.Parent = e.Parent.Torso 
m2.Scale = Vector3.new((m2.Parent.Size.X/2),(m2.Parent.Size.Y/2),1e-999) 
m3=Instance.new("BlockMesh") 
m3.Parent = e.Parent["Right Arm"] 
m3.Scale = Vector3.new((m3.Parent.Size.X),(m3.Parent.Size.Y/2),1e-999) 
m4=Instance.new("BlockMesh") 
m4.Parent = e.Parent["Left Arm"] 
m4.Scale = Vector3.new((m4.Parent.Size.X),(m4.Parent.Size.Y/2),1e-999) 
m5=Instance.new("BlockMesh") 
m5.Parent = e.Parent["Right Leg"] 
m5.Scale = Vector3.new((m5.Parent.Size.X),(m5.Parent.Size.Y/2),1e-999) 
m6=Instance.new("BlockMesh") 
m6.Parent = e.Parent["Left Leg"] 
m6.Scale = Vector3.new((m6.Parent.Size.X),(m6.Parent.Size.Y/2),1e-999) 
end 
end 
end 
end 