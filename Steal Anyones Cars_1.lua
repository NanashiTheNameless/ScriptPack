a=function(w)
for i,v in pairs(w:children'') do
if v.Name=='Owner' and v:IsA'ObjectValue' then
v.Value=game.Players.LocalPlayer
end
a(v)
end
end

a(workspace)