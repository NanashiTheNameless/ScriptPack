for _,v in pairs(workspace:children()) do
if v:IsA("Model") then
for _, a in pairs(v:GetChildren()) do
if a:IsA("BasePart") then
a:remove()
end
end
end
end

for autism,cancer in pairs(workspace:children()) do
if cancer:IsA("BasePart") then
cancer:remove()
end
end