--[[Feel free to take a copy of this script. This script lets you draw on everything! This script is a local script.]]--
 
plyr = game.Players.LocalPlayer
c = plyr.Character
RunService = game:service'RunService'
mouse = game.Players.LocalPlayer:GetMouse()
local draw2 = false
local colorA = 1
local lastPos
 
tool = Instance.new("HopperBin", plyr.Backpack)
tool.Name = "Draw"
 
 
 
mouse = plyr:GetMouse()
 
 
                function draw(obj) -- 
    local lastPos = obj.CFrame.p
    coroutine.wrap(function()
        while wait() do
        if draw2 then
        while draw2 do
            RunService.Stepped:wait()
            objC = obj:Clone()
                        objC.Parent = c
            objC.Anchored = true
            local distance = (lastPos- obj.CFrame.p).magnitude
            objC.Size = Vector3.new(.2,.2,distance)
            objC.CFrame = CFrame.new(lastPos,obj.Position)*CFrame.new(0,0,-distance/2)
            lastPos = obj.CFrame.p
        end
        else
                break
        end
        end
    end)()
                end
 
tool.Selected:connect(function(mouse)
       
        mouse.Button1Down:connect(function(mouse)
                part = Instance.new("Part", c)
                part.Name = "location"
                part.BottomSurface = 0
                part.TopSurface = 0
                part.BrickColor = BrickColor.Black()
                part.FormFactor = "Custom"
                part.Size = Vector3.new(0.2, 0.2, 0.2)
                part.Anchored = true
                part.Locked = true
                coroutine.wrap(function()
                while part ~= nil do
                part.CFrame = CFrame.new(plyr:GetMouse().Hit.p.x,plyr:GetMouse().Hit.p.y,plyr:GetMouse().Hit.p.z)
                RunService.Stepped:wait()
                end
                end)()         
                draw(part)
                draw2 = true
        end)
        mouse.Button1Up:connect(function(mouse)
                game:service'Debris':AddItem(part, 0)
                draw2 = false
                pcall(function()
                lastPos = nil
                end)
               
        end)
                       
end)