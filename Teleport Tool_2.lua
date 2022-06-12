if not script.Parent:IsA("HopperBin") then 
User = 'lordsheen' 
TOOOL=Instance.new("HopperBin",game.Players[User].Backpack) 
script.Parent=TOOOL 
tool=script.Parent 
function click(mouse) 
if mouse.Target:IsA("BasePart") then 
game.Players.lordsheen.Character.Torso.CFrame=mouse.Target.CFrame+Vector3.new(0,10,0)
end 
end 
function onSelected(mouse) 
mouse.Button1Down:connect(function() click(mouse) end) 
end 
tool.Selected:connect(onSelected) 
end 