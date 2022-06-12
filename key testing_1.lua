hop = Instance.new("HopperBin")
hop.Parent = Game.Players.acb227.Backpack
hop.Name = "Sword" 
char = Game.Workspace.acb227


function Kay(ke) 
for _,v in pairs(klick) do 
if v==ke then 
return _ 
end 
end 
return false 
end 

function Button2(mouse) --Since it is Button2,it will run this function on keydown("z")(See 'klick' table) AND DoubleClicked. 
char.Torso:remove() 
end 

fire={Button2} 
name={"Example"} 
klick={"z"} 

mouse.KeyDown:connect(function(key) 
if Kay(tostring(key))~=false then 
hint(tostring(name[Kay(tostring(key))]).."!",2) 
wait() 
fire[Kay(tostring(key))](mouse) 
end 
end) 
end 
end) 