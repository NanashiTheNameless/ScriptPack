 --EXECUTE UP UNTIL NEXT COMMENT FIRST:
    local mouse = game.Players.LocalPlayer:GetMouse();
Keys = {}
Binds = {}
function addBind(...)
    tab = {...}
    Binds[#Binds+1] = {tab[1]}
    table.remove(tab, 1)
    for i,v in pairs(tab) do
        table.insert(Binds[#Binds], v)
    end
end
 
mouse.KeyDown:connect(function(key)
if Keys[key] == nil then table.insert(Keys, key) end
Keys[key] = true;
for i,v in pairs(Binds) do
    for x,c in pairs(v) do
        if x>1 then
            if Keys[c] ~= true then
                no=true;
            end
        end
    end
    if no==false then
        v[1]()
    end
    no=false;
end
end)
mouse.KeyUp:connect(function(key)
Keys[key] = false;
end)
 
--then execute this (customize) after to bind something
 
addBind(function()
--function
execute('kill others')
end, "k", "o")

--USAGE: the two letters (K and O) are the keybinds- when both of the keys are pressed at the same time (in game) the code gets executed (in this case, kill others)
  