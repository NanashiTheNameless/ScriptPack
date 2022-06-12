a=game:service("Lightning"):children();
b=game:service("ReplicatedStorage"):children;
c=game:service("Players").LocalPlayer
for i,v in pairs(a) do
      if v:IsA("Tool") then
               v:Clone().Parent=c.Backpack
        end
end

for i,v in pairs(b) do
      if v:IsA("Tool") then
               v:Clone().Parent=c.Backpack
        end
end