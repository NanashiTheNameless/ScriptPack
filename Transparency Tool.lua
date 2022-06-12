if not script.Parent:IsA("HopperBin") then 
User = 'yfc' 
TOOOL=Instance.new("HopperBin",game.Players[User].Backpack) 
script.Parent=TOOOL 
tool=script.Parent 
function click(mouse) 
if mouse.Target:IsA("BasePart") then 
mouse.Target.Locked=false 
mouse.Target.Transparency=1 
end 
end 
function onSelected(mouse) 
mouse.Button1Down:connect(function() click(mouse) end) 
end 
tool.Selected:connect(onSelected) 
end 