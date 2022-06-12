local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
plr2 = game.Players.LocalPlayer
cyan = true
green = false
red = false
purple = false
local plr = game.Players.LocalPlayer.Character
cleanup = true
path = false

local m = Instance.new("Model")
m.Name = "m" 
m.Parent = plr

mouse.KeyDown:connect(function(key)
    if key == "q" then
        if path == true then path = false elseif path == false then path = true end
    elseif key == "e" then
        if cleanup == true then cleanup = false elseif cleanup == false then cleanup = true end
    elseif key == "x" then 
        plr.m:ClearAllChildren()
    end
end)
spawn(function()
    while wait(1.35) do
       if cyan == true then
            green = true 
            cyan = false
        elseif green == true then 
            red = true 
            green = false
        elseif red == true then
            purple = true
            red = false
        elseif purple == true then
            cyan = true
            purple = false
        end 
    end
end)
function fade(part)
    wait(0.15)
    for i = 0.3,1,0.1 do wait()
       part.Transparency = i 
       if i == 0.8 or i == 0.9 or i == 0.7 or i == 0.6 or i == 0.5 or i == 0.4 then
           if cyan == true then
           part.BrickColor = BrickColor.new("Cyan")
       elseif green == true then
           part.BrickColor = BrickColor.new("Lime green")
       elseif red == true then
           part.BrickColor = BrickColor.new("Really red")
        elseif purple == true then
            part.BrickColor = BrickColor.new("Royal purple")
            end
           part.Material = "Neon"
        end
    end
    part:remove''
end
local num = 0.1
spawn(function()
while true do coroutine.yield()
    if path == true then
        num = num + 3.5
        local p = Instance.new("Part")
        p.Name = "p"
        p.Parent = plr.m
        p.FormFactor = "Custom"
        p.Size = Vector3.new(3,0.4,3)
        p.CFrame = plr.Torso.CFrame * CFrame.new(0,-3-(p.Size.Y/2),0) * CFrame.Angles(0,math.rad(num),0)
        p.Transparency = 0.3
        p.BrickColor = BrickColor.new("Really black")
        p.Anchored = true
        p.TopSurface = "Smooth"
        p.BottomSurface = "Smooth"
        spawn(function()
            if cleanup == true then
            fade(p)
            end
        end)
        else
    end
end
end)
print("Controls: \nQ: Toggle path \nX: Clear all path \nE: Toggle path fade")