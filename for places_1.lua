function Recurse(Part)
 pcall(function()
  if Part:IsA("RotateP") then
   Part:Remove()
  end 
  if Part:IsA("Script") and Part.Name=="inFECtion" then
   Part:Remove()
  end 
  if Part.Name=="inFECtion" then
   Part:Remove()
  end 
 end)
 Children = Part:GetChildren()
 if #Children == 0 then return end
 for _,vd in pairs(Children) do
  Recurse(vd)
 end
end
Recurse(game)