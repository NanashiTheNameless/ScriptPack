--[[
    
    RAINDROP DEFAULT SCRIPTS
    
    NAME            ::    AUTHOR    ::    DATE
    Purge            ::    brack4712    ::    10/29/16
    
    INSTRUCTIONS
    [*] Change the values for the following to your liking:
        > FogEnd
        > Volume
        > Looped
    [*] Press Execute!
    
    ENJOY!
    
--]]

local FogEnd = tonumber("20")
local Volume = tonumber("1")
local Looped = true

--- DO NOT EDIT BELOW THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOING! ---


game.Lighting.FogEnd = FogEnd
local sound = Instance.new("Sound",game.Workspace)
sound.Name = "PurgeFX"
sound.Looped = Looped
sound.Volume = Volume
sound.SoundId = "rbxassetid://232554097"
sound:Play()

if Looped == true then
else
    wait(70)
    sound:Destroy()
    game.Lighting.FogEnd = 100000
end