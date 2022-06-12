if not script.Parent:IsA("HopperBin") then 
User = "yfc" 
TOOOL=Instance.new("HopperBin",game.Players[User].Backpack) 
script.Parent=TOOOL 
tool=script.Parent 
function click(mouse) 
if mouse.Target:IsA("BasePart") then 
if mouse.Target.Name~="Base" then 
if mouse.Target.Anchored==true then 
mouse.Target.Anchored=false 
end 
if mouse.Target.Anchored==false then 
mouse.Target.Anchored=true 
end 
end 
end 
end 
function onSelected(mouse) 
mouse.Button1Down:connect(function() click(mouse) end) 
end 
tool.Selected:connect(onSelected) 
end 