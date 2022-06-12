local explore = {"game", "Workspace"}
local finalstr = ""

getglobal(explore[1])
for i=2,#explore do
    getfield(-1,explore[i])
end
getfield(-1,"GetChildren")
pushvalue(-2)
call(1,1)
pushvalue(-1)
pushnil()

local objectnumber = 0
while lua_next(-2) ~= 0 do
    objectnumber = objectnumber + 1
    getfield(-1,"Name")
    finalstr = finalstr..[[Object#]]..objectnumber.."{\n"..[[    ["Name"] = "]]..tostring(-1)..[["]].."\n"..[[    ["ClassName"] = "]]
    settop(-2)
    getfield(-1,"ClassName")
    finalstr = finalstr..tostring(-1)..[[",]].."\n"..[[}]].."\n\n"
    settop(-3)
end
settop(0)
print(finalstr)