vip = game.Players.lordsheen

if script.Parent.className ~= "HopperBin" then 
hop = Instance.new("HopperBin") 
hop.Parent = vip.Backpack 
hop.Name = "DaTool" 
script.Parent = hop 
end 
hop = script.Parent 
function click(mouse) 
if mouse.Target == nil then return end 

end 

function onKeyDown(key) 
if (key~=nil) then 
key = key:lower() 
if (key=="q") then 
-----------------------------------------------





-----------Enter Script Here-------------





------------------------------------------------
end 
end 
end 



function select(mouse) 
mouse.KeyDown:connect(function() onKeydown(key) end) 
mouse.KeyDown:connect(onKeyDown) 
end 
hop.Selected:connect(select) 