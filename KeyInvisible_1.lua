local p = game.Players.LocalPlayer
local mouse = p:GetMouse()
local char = p.Character
enabled = true

------------------------------------- Credits.
-- Theastro(Main scripter)
-- Droppy (Help with key function)
-- Reborn (Help with key function)
--------------------- Can be touched Change values to your liking.

-- --- --- --- --- --- - ---- -- -- - -- Controls

--q = UnGhost
--e = Ghost

-- --- --- --- --- --- - ---- -- -- - -- 
 -- Dont touch below
mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "e" then
         epic = game.Workspace.Theastro3
         torso = epic.Torso
         head = epic.Head
         leftarm = epic["Left Arm"]
         rightarm = epic["Right Arm"]
         leftleg = epic["Left Leg"]
         rightleg = epic["Right Leg"]
         head.Transparency = 0.6
         rightarm.Transparency = 0.6
         leftarm.Transparency = 0.6
         rightleg.Transparency = 0.6
         leftleg.Transparency = 0.6
         torso.Transparency = 0.6
    end
end)

mouse.KeyDown:connect(function(key)
    key = key:lower()
    if key == "q" then
         epic = game.Workspace.Theastro3
         torso = epic.Torso
         head = epic.Head
         leftarm = epic["Left Arm"]
         rightarm = epic["Right Arm"]
         leftleg = epic["Left Leg"]
         rightleg = epic["Right Leg"]
         head.Transparency = 0
         rightarm.Transparency = 0
         leftarm.Transparency = 0
         rightleg.Transparency = 0
         leftleg.Transparency = 0
         torso.Transparency = 0
    end
end)