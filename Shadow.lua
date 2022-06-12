 
player = game.Players.kash5 -- replace Player1 with your name (That's all you have to do, now run this script as a local script)
owner=player.Name
character=player.Character
mouse=player:GetMouse()
speed=300--speed of fireball (try to make it bigger than 300 if you're going to change it for the good, if you're just doing whatever you can change it to anything :P)
soundid="154324879"
timeUntilDisappear=10--seconds
dominusRetexture="114455897" -- must be vespertillo retexture
 
 
 
 
mouse.KeyDown:connect(function(key)
        if string.byte(key)==101 then -- asks game if the key is e
               
                    local fireball=Instance.new("Part")
        local light=Instance.new("PointLight")
        local flySound=Instance.new("Sound")
        light.Parent=fireball
        light.Color=Color3.new(0,0,0)
        -- FIRE PROPERTIES --
        fireball.Parent=workspace
        fireball.CFrame=CFrame.new(character.Head.Position.X,character.Head.Position.Y+1,character.Head.Position.Z)        
        fireball.TopSurface='Smooth'
        fireball.BottomSurface="Smooth"
        fireball.Name="Fireball"
        fireball.Shape="Ball"
        fireball.CanCollide=false
        fireball.Transparency=0.5
        fireball.BrickColor=BrickColor.new("Really black")
        fireball.FormFactor="Symmetric"
        fireball.Size=Vector3.new(4,4,4)
        fireball.Velocity=mouse.Hit.lookVector*speed
        flySound.Parent=fireball
        flySound.SoundId="http://www.roblox.com/asset?id="..soundid
    flySound:Play()--plays sound.   If you don't want a sound then delete this line
        local effect=Instance.new("Fire")
        effect.Color=Color3.new(0,0,0)
        effect.SecondaryColor=Color3.new(0,0,0.1)
        effect.Parent=fireball
       
        fireball.Touched:connect(function(hit)
                if hit.Parent:findFirstChild("Humanoid") and hit.Parent.Name~=owner then
                       
                        for i,v in pairs(hit.Parent:GetChildren()) do
                                if v.ClassName=="Part" then
                                        effect:Clone().Parent=v
                                       
                                end
                        end
                       
                        hit.Parent:BreakJoints()
                        fireball:remove()
                end
               
                wait(timeUntilDisappear)
               
                fireball:remove()
 
        end)
        end
end)
 
 
Instance.new("ForceField",character) -- ForceField
character.Humanoid.WalkSpeed=100 -- speed
character.Humanoid.MaxHealth=math.huge
character.Humanoid.Health=character.Humanoid.MaxHealth
for i,v in pairs(character:GetChildren()) do
        if v.ClassName=="Hat" then
                v:remove()
        end
end
 
local dominus = game:GetService("InsertService"):LoadAsset(96103379):GetChildren()[1] -- change 96103379 to the hat you want (if you're changing)
dominus.Handle.Mesh.TextureId="http://www.roblox.com/asset?id="..dominusRetexture
dominus.Handle.Transparency=0.5
dominus.Parent=character
 
for _,part in pairs(character:GetChildren()) do
        if part.ClassName=='Part' then
                part.BrickColor=BrickColor.new("Really black")
                part.Transparency=0.5
        elseif part.ClassName=="Shirt"then
                part:remove()
       
        elseif part.ClassName=="Pants" then
                part:remove()
        elseif part.ClassName=="ShirtGraphic" then
                part:remove()
        end
end
 
if character.Torso:findFirstChild("roblox") then
        character.Torso.roblox:remove()
end
 
if character.Head:findFirstChild("face") then
        character.Head.face:remove()
end
 
if character:findFirstChild("Head") then
        character.Head.Transparency=1
end
 
 
function onButton1Down_1(mouse)
        local target=mouse.Target
        if target.Parent:findFirstChild("Humanoid") then
                target.Parent:BreakJoints()
        end
end
 
 
local kill_tool=Instance.new("HopperBin")
kill_tool.Parent=player.Backpack
kill_tool.Name='Kill Player'
kill_tool.Selected:connect(function(mouse)
        mouse.Button1Down:connect(function() onButton1Down_1(mouse) end)
end)
 
 
function onButton1Down_2(mouse)
        local target=mouse.Target
        if target.Parent~=character then
                target:remove()
        end
end
 
local delete_tool=Instance.new("HopperBin")
delete_tool.Parent=player.Backpack
delete_tool.Name="Delete Part"
 
delete_tool.Selected:connect(function(mouse)
        mouse.Button1Down:connect(function() onButton1Down_2(mouse) end )
end)
 
 
function onButton1Down_3(mouse)
        local target=mouse.Target
        if game.Players:GetPlayerFromCharacter(target.Parent) then
                game.Players:GetPlayerFromCharacter(target.Parent):Kick()
        end
end
 
local kick_tool=Instance.new("HopperBin")
kick_tool.Parent=player.Backpack
kick_tool.Name="Kick Player"
 
kick_tool.Selected:connect(function()
        player.Chatted:connect(function(msg)
               
                        for i,v in pairs(game.Players:GetChildren()) do
                                if string.find(msg, v.Name) then
                                        v:Kick()
                                end
                       
                end
        end)
end)
function onButton1Down_4(mouse)
        local brick=Instance.new("Part")
       
        -- KILL BRICK PROPERTIES --
        brick.Parent=workspace
        brick.FormFactor="Symmetric"
        brick.Anchored=true
        brick.TopSurface='Smooth'
        brick.BottomSurface='Smooth'
        brick.Size=Vector3.new(5,5,5)
        brick.CFrame=CFrame.new(mouse.Hit.p) * CFrame.Angles(2,2,2)
        brick.Transparency=0.2
        brick.BrickColor=BrickColor.new("Really black")
        brick.Material='SmoothPlastic'
        brick.Locked=true -- to keep from delete tools or something like that
 
brick.Touched:connect(function(hit)
        if hit.Parent.Name~=owner and hit.Parent:findFirstChild("Humanoid") then
                hit.Parent:BreakJoints()
        end
end)
 
end
 
local killbrick_tool=Instance.new("HopperBin")
killbrick_tool.Parent=player.Backpack
killbrick_tool.Name="Create KillBrick"
killbrick_tool.Selected:connect(function(mouse)
        mouse.Button1Down:connect(function() onButton1Down_4(mouse) end)
end)
 
local revert_color_tool = Instance.new("HopperBin")
revert_color_tool.Parent=player.Backpack
revert_color_tool.Name="Change colors to default"
revert_color_tool.Selected:connect(function()
        for i,v in pairs(character:GetChildren()) do
                if v.ClassName=='Part' then
                        v.BrickColor=BrickColor.new("Really black")
                end
        end
end)
 
 
 
local dark_tool=Instance.new("HopperBin")
dark_tool.Parent=player.Backpack
dark_tool.Name='Black Out'
dark_tool.Selected:connect(function(mouse)
        local sound=Instance.new("Sound")
        sound.Parent=workspace
        sound.SoundId="http://www.roblox.com/asset?id=147722227"
        sound:Play()
        game.Lighting.TimeOfDay="20:00"
        game.Lighting.GlobalShadows=false
        character.ForceField:remove()
        wait(2)
        sound:Stop()
        sound:remove()
end)
dark_tool.Deselected:connect(function()
        game.Lighting.TimeOfDay="14:00"
        Instance.new("ForceField",character)
        game.Lighting.GlobalShadows=true
end)
 
--[[local rain_tool=Instance.new("HopperBin")
rain_tool.Parent=player.Backpack
rain_tool.Name="Make It Rain"]]
