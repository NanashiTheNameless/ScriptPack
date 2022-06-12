if not script.Parent:IsA("HopperBin") then 
User = 'lordsheen' 
TOOOL=Instance.new("HopperBin",game.Players[User].Backpack) 
script.Parent=TOOOL 
tool=script.Parent 
function click(mouse) 
if mouse.Target:IsA("BasePart") then 
if mouse.Target.Name~="Base" then 
mouse.Target.Locked=false 
mouse.Target:Remove() 
end 
end 
end 
function onSelected(mouse) 
mouse.Button1Down:connect(function() click(mouse) end) 
end 
tool.Selected:connect(onSelected) 
end 