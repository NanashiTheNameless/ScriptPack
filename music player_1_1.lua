script.Parent = workspace.yfc 
local so4 = Instance.new("Sound")
so4.Name = "asdfasdfasfffsfafda"
so4.SoundId = "http://www.roblox.com/asset/?ID=33810432"
so4.Volume = 1
so4.Looped = true --mediafire 
so4.archivable = true
so4.Parent = script.Parent 

function cmds(msg) 
if string.sub(msg, 1, 6) == "pitch;" then 
said = string.lower(string.sub(msg, 7)) 
so4.Pitch = said 
end 
if string.sub(msg, 1, 5) == "play;" then 
said = string.lower(string.sub(msg, 6)) 
so4:play() 
end 
if string.sub(msg, 1, 5) == "stop;" then 
said = string.lower(string.sub(msg, 6)) 
so4:stop() 
end 
if string.sub(msg, 1, 4) == "vol;" then 
said = string.lower(string.sub(msg, 5)) 
so4.Volume = said 
end 
if string.sub(msg, 1, 3) == "id;" then 
said = string.lower(string.sub(msg, 4)) 
if said == "Mule" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1077604" 
end 
if said == "1" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1089406" 
end 
if said == "2" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1089405" 
end 
if said == "3" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1089403" 
end 
if said == "4" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1088480" 
end 
if said == "halo" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1034065" 
end 
if said == "abby" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1372257" 
end 
if said == "choir" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1372258" 
end 
if said == "boom" then 
so4.SoundId = "http://www.roblox.com/asset/?id=1994345" 
end 
end 
if string.sub(msg, 1, 5) == "m id;" then 
said = string.lower(string.sub(msg, 6)) 
so4.SoundId = "http://www.roblox.com/asset/?id=" ..said 
end 
end 
--http://www.roblox.com/asset/?id=33810432
game.Players.yfc.Chatted:connect(cmds) 