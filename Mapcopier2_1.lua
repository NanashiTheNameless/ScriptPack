AllowedClassnames = {'Part','WedgePart','SpawnLocation','UnionOperation','Seat','VehicleSeat','Truss?Part'}
Settings = {
Copy = false, -- Using this option might cause lag in game but it doesn't remove the game.
Creator = '001', -- Created by 001 from V3rmillion.net.
--Surfaces = false,
}
source = ""
newline = [[
    
]]
tablecheck = function(t,value) -- Function: tablecheck, Description: checks a table for a value, Variables: table (table), value (string).
    for i,v in pairs(t) do
        if v==value then
            return true
        end
    end
    return nil
end
printFunction = function(str) -- Function: printFunction, Description: Custom print function, Variables: print (string).
    printconsole(str)
end
ifclass = function(part, tabl, str)
    for i,v in pairs(tabl) do
        if v == part.ClassName then
            printFunction(str)
        end
    end
end
copy = function(children) -- no time to document this,
    local PartClass = children.ClassName
    if tablecheck(AllowedClassnames, PartClass) then
        local PartName = "P"..math.random(100,999)
        printFunction(PartName.."=Instance.new('"..PartClass.."', Workspace)") -- Instance.new
        printFunction(PartName..".Name='"..children.Name.."'") -- Name
        --ifclass(children, {'Part', 'SpawnLocation', 'Seat'}, PartName..".Shape="..tostring(children.Shape)) -- Shape
        --ifclass(children, {'UnionOperation'}, PartName..".UsePartColor="..tostring(children.UsePartColor)) -- UsePartColor
        printFunction(PartName..".CanCollide="..tostring(children.CanCollide)) -- CanCollide
        printFunction(PartName..".Locked="..tostring(children.Locked)) -- Locked
        printFunction(PartName..".Anchored="..tostring(children.Anchored)) -- Anchored
        printFunction(PartName..".Archivable="..tostring(children.Archivable)) -- Archivable
        --ifclass(children, {'Part', 'WedgePart', 'SpawnLocation', 'Seat'}, PartName..".FormFactor="..tostring(children.FormFactor)) -- FormFactor
        printFunction(PartName..".Size=Vector3.new("..tostring(children.Size)..")") -- Size
        printFunction(PartName..".CFrame=CFrame.new("..tostring(children.CFrame)..")") -- CFrame
        printFunction(PartName..".BrickColor=BrickColor.new('"..tostring(children.BrickColor).."')") -- BrickColor
        printFunction(PartName..".Transparency="..tostring(children.Transparency)) -- Transparency
        printFunction(PartName..".Material="..tostring(children.Material)) -- Material
        printFunction("ss("..PartName..","..tostring(children.BackSurface)..","..tostring(children.BottomSurface)..","..tostring(children.FrontSurface)..","..tostring(children.LeftSurface)..","..tostring(children.RightSurface)..","..tostring(children.TopSurface)..")") -- Surface
    end
end
function findLoop(childre)
Instance.new('Model',game.Lighting).Name='Copy'
findLoop2 = function(children) -- Function: findLoop, Description: Just a find loop, Variables: children (Part).
    for i,v in pairs(children:GetChildren()) do
        if tablecheck(AllowedClassnames, v.ClassName) then
            if Settings.Copy == true then
                v:Clone().Parent = game.Lighting.Copy
            else
                v.Parent = game.Lighting.Copy
            end
        end
        findLoop2(v)
    end
end
findLoop2(childre)
wait(2)
printFunction("ss=function(p,bs,bz,fs,ls,rs,ts)p.BackSurface=bs;p.BottomSurface=bz;p.FrontSurface=fs;p.LeftSurface=ls;p.RightSurface=rs;p.TopSurface=ts;end") -- SetSurface (ss) function.
for i,v in pairs(game.Lighting.Copy:GetChildren()) do
    copy(v)
end
end

findLoop(game.Workspace) -- Start the script.