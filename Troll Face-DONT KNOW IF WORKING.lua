getglobal for Get,Players in ipairs(game
getfield -1 Players
getfield -1 GetPlayers) do
pushvalue -2
pcall 1 1 0
getglobal for Get,Workspace in ipairs(game
getfield -1 Workspace
getfield -1 GetChildren) do
pushvalue -2
pcall 1 1 0
getglobal if (Workspace
setfield -2 Name
getglobal Instance
getfield -1 new;
pushstring ParticleEmitter
pcall 1 1 0
pushvalue -1
setfield -2 ParticleEmitter
getglobal ParticleEmitter
pushstring rbxassetid://48308661;
setfield -2 Texture
getglobal Workspace
getfield -1 Head;
getglobal ParticleEmitter
pushvalue -2
setfield -2 Parent
getglobal end
getglobal end
getglobal end