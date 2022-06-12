getglobal workspace
getglobal Instance
getfield -1 new
pushstring Sound
pushvalue -4
pcall 2 1 0
pushstring rbxassetid://232554097
setfield -2 SoundId
pushnumber 1
setfield -2 Volume
getfield -1 Play
pushvalue -2
pcall 1 0 0
emptystack
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Lighting
pcall 2 1 0
pushnumber 50
setfield -2 FogEnd
emptystack
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Lighting
pcall 2 1 0
pushnumber 1
setfield -2 TimeOfDay
emptystack