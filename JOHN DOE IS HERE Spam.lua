function a(b) 
for i,v in next, b:GetChildren() do
if v:IsA("Part") then
bbg = Instance.new("BillboardGui")
bbg.Adornee=v
bbg.Parent=v
bbg.Size=UDim2.new(3,0,3,0)
bbg.StudsOffset=Vector3.new(0,2,0)
fr = Instance.new("Frame", bbg)
fr.BackgroundTransparency=1
fr.Size=UDim2.new(1,0,1,0)
tl = Instance.new("TextLabel", fr)
tl.FontSize="Size48"
tl.BackgroundTransparency=1
tl.Text="JOHN DOE IS HERE"
tl.TextColor3=Color3.new(1,0,0)
tl.Size=UDim2.new(1,0,1,0)
end
a(v)
end
end
a(workspace)