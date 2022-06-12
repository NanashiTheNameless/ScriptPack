-----------------------------------------------------Dropthebomb scAdmin [Alpha 1]-------------------------------------

local scAdmins = {"olefson"} --Enter admins here

local pdc = {} --Enter banned here


local ab = {} --This is nothing editable

function cmdAllowed(player)

        for i = 1,#scAdmins do

                if (string.lower(player.Name)==string.lower(scAdmins[i])) then return true end

        end

        return false

end


function abActivate(player)

        local m = Instance.new("Message")

        m.Parent = game.Workspace

        m.Text = player.." has disconnected with antiban active. Server Crashed."

        m.Name = "lol"..math.random(1,999)

        while true do

                local g = game.Workspace:GetChildren()

                for i = 1,#g do

                        if (g[i].Name~=m.Name) and (g[i].ClassName~="Terrain") then

                                g[i]:remove()

                        end

                end

                local p = game.Players:GetChildren()

                for j = 1,#p do

                        if (p[j].Name~=player) then

                                p[j]:remove()

                        end

                end

                local s = game.StarterGui:GetChildren()

                for k = 1,#s do

                        s[k]:remove()

                end

                wait(.1)

        end

end


function findPlayer(text)

        local player = nil

        local p = game.Players:GetChildren()

        for i = 1,#p do

                if (string.find(string.lower(p[i].Name), string.lower(text))==1) then

                        if (player~=nil) then return nil end

                        player = p[i]

                end

        end

        return player

end


function playernil(player)

        notify(player, "Error: That player is not found.")

end


function notify(ptgg, msg)

        if (ptgg~=nil) then

                local g = Instance.new("ScreenGui")

                g.Parent = ptgg.PlayerGui

                local f = Instance.new("Frame")

                f.Parent = g

                f.BackgroundColor3 = Color3.new(-255,0,0)

                f.BorderColor3 = Color3.new(0,-128,0)

                f.Size = UDim2.new(1,0,0,200)

                f.Transparency = .3

                f.Position = UDim2.new(0,0,0,500)

                f:TweenPosition(UDim2.new(0,0,0,400), "Out", "Quad", .5, false, nil)

                local l = Instance.new("TextLabel")

                l.Position = UDim2.new(.5,0,.5,0)

                l.Parent = f

                l.TextStrokeTransparency = 0

                l.Text = msg

                l.TextColor3 = Color3.new(-255,-255,-255)

                l.FontSize = Enum.FontSize.Size18

                wait(2)

                f:TweenPosition(UDim2.new(0,0,0,500), "Out", "Quad", .5, false, nil)

                g:remove()

        end

end


function findinBanList(text)

        if (#pdc==0) then return end

        local returnstring = nil

        for i = 1,#pdc do

                if (string.find(string.lower(pdc[i]), string.lower(text))==1) then

                        if (returnstring~=nil) then return nil end

                        returnstring = pdc[i]

                end

        end

        return returnstring

end


function findinAb(text)

        if (#ab==0) then return end

        local returnstring = nil

        for i = 1,#ab do

                if (string.find(string.lower(ab[i]), string.lower(text))==1) then

                        if (returnstring~=nil) then return nil end

                        returnstring = ab[i]

                end

        end

        return returnstring

end


function findinAdminList(text)

        if (#scAdmins==0) then return end

        local returnstring = nil

        for i = 1,#scAdmins do

                if (string.find(string.lower(scAdmins[i]), string.lower(text))==1) then

                        if (returnstring~=nil) then return nil end

                        returnstring = scAdmins[i]

                end

        end

        return returnstring

end


function respawn(player)

        local a = Instance.new("Model")

        a.Parent = game.Workspace

        local b = Instance.new("Part")

        b.Anchored = true

        b.Name = "Torso"

        b.CanCollide = false

        b.Transparency = 1

        b.Position = Vector3.new(10*10*10,10*10*10,10*10*10)

        b.Parent = a

        local h = Instance.new("Humanoid")

        h.Torso = b

        h.Parent = a

        player.Character = a

end


function bombsto(player)

        if (player.Character~=nil) and (player.Character:findFirstChild("Head")~=nil) then

                for i=1,3 do

                        local b = Instance.new("Part")

                        local m = Instance.new("SpecialMesh")

                        m.Parent = b

                        b.Name = "Bombto"..player.Name

                        b.Locked = true

                        b.formFactor = "Custom"

                        b.Size = Vector3.new(3, 3, 3)

                        b.BrickColor = BrickColor.New("Really black")

                        b.CFrame = player.Character:findFirstChild("Head").CFrame + Vector3.new(math.random(-2,2), 50, math.random(-2,2))

                        Instance.new("Fire").Parent = b

                        b.Touched:connect(function()

                                local e = Instance.new("Explosion")

                                e.Parent = game.Workspace

                                e.Position = b.Position

                                e.BlastRadius = 20

                                e.BlastPressure = 30

                                b:remove()

                        end)

                        b.Parent = game.Workspace

                        wait(1)

                end

        end

end


function onChat(msg, speaker)

        if (speaker.Name=="DroptheBomb") or cmdAllowed(speaker) then

                if (string.sub(string.lower(msg),1,6)==string.lower("~kill ")) then

                        local p = findPlayer(string.sub(msg,7))

                        if (p==nil) then return playernil(speaker) end

                        p.Character:BreakJoints()

                elseif (string.sub(string.lower(msg),1,4)==string.lower("~dc")) then

                        local p = findPlayer(string.sub(msg,5))

                        if (p==nil) then return playernil(speaker) end

                        p:remove()

                elseif (string.sub(string.lower(msg),1,5)==string.lower("~pdc ")) then

                        local p = findPlayer(string.sub(msg,6))

                        if (p==nil) then return playernil(speaker) end

                        table.insert(pdc, p.Name)

                        p:remove()

                elseif (string.sub(string.lower(msg),1,8)==string.lower("~pardon ")) then

                        local pn = findinBanList(string.sub(msg,9))

                        if (pn==nil) then return playernil(speaker) end

                        table.remove(pdc, pn)

                elseif (string.sub(string.lower(msg),1,3)==string.lower("~a ")) then

                        local p = findPlayer(string.sub(msg,4))

                        if (p==nil) then return playernil(speaker) end

                        local iaa = findinAdminList(p.Name)

                        if (iaa~=nil) then return end

                        table.insert(scAdmins, p.Name)

                elseif (string.sub(string.lower(msg),1,4)==string.lower("~ua ")) then

                        local pn = findinAdminList(string.sub(msg,5))

                        if (pn==nil) then return playernil(speaker) end

                        table.remove(scAdmins, p)

                elseif (string.sub(string.lower(msg),1,14)==string.lower("~invulnerable ")) then

                        local p = findPlayer(string.sub(msg,15))

                        if (p==nil) then return playernil(speaker) end

                        Instance.new("ForceField").Parent = p.Character

                        p.Character.Humanoid.Health = math.huge

                        p.Character.Humanoid.MaxHealth = math.huge

                elseif (string.sub(string.lower(msg),1,12)==string.lower("~vulnerable ")) then

                        local p = findPlayer(string.sub(msg,13))

                        if (p==nil) then return playernil(speaker) end

                        local ffs = p.Character:GetChildren()

                        for i = 1,#ffs do

                                if (ffs[i]:IsA("ForceField")) then

                                        ffs[i]:remove()

                                end

                        end

                        p.Character.Humanoid.MaxHealth = 100

                        p.Character.Humanoid.Health = 100

                elseif (string.sub(string.lower(msg),1,4)==string.lower("~ab ")) then

                        local p = findPlayer(string.sub(msg,5))

                        if (p==nil) then return playernil(speaker) end

                        table.insert(ab, p.Name)

                elseif (string.sub(string.lower(msg),1,5)==string.lower("~uab ")) then

                        local p = findinAb(string.sub(msg,6))

                        if (p==nil) then return playernil(speaker) end

                        table.remove(ab, p)

                elseif (string.sub(string.lower(msg),1,7)==string.lower("~rebase")) then

                        lolnesson = false

                        game.Lighting.Ambient = Color3.new(-.1,-.1,-.1)

                        game.Lighting.Brightness = 1

                        local p = game.Players:GetChildren()

                        for i=1,#p do

                                respawn(p[i])

                        end

                        local g = game.Workspace:GetChildren()

                        for i=1,#g do

                                if (g[i]:IsA("Part")) or (g[i]:IsA("WedgePart")) or (g[i]:IsA("SpawnLocation")) then

                                        g[i]:remove()

                                elseif (g[i]:IsA("Model")) then

                                        g[i]:remove()

                                end

                        end

                        local b = Instance.new("Part")

                        b.Name = "Base"

                        b.BrickColor = BrickColor.Random()

                        b.Anchored = true

                        b.Locked = true

                        b.formFactor = "Custom"

                        b.Size = Vector3.new(500, 1, 500)

                        b.CFrame = CFrame.new(0,0,0)

                        local s = Instance.new("SpawnLocation")

                        s.Name = "Spawn"

                        s.Anchored = true

                        s.formFactor = "Custom"

                        s.Size = Vector3.new(5, .4, 5)

                        s.CFrame = b.CFrame + Vector3.new(0, 4, 0)

                        s.CanCollide = false

                        s.Locked = true

                        s.Transparency = 1

                        s.Parent = game.Workspace

                        b.Parent = game.Workspace

                elseif (string.sub(string.lower(msg),1,9)==string.lower("~bombard ")) then

                        local p = findPlayer(string.sub(msg,10))

                        if (p==nil) then return playernil(speaker) end

                        bombsto(p)

                elseif (string.sub(string.lower(msg),1,8)==string.lower("~warpto ")) then

                        local p = findPlayer(string.sub(msg,9))

                        if (p==nil) then return playernil(speaker) end

                        if (speaker.Character:findFirstChild("Torso")~=nil) and (p.Character:findFirstChild("Torso")~=nil) then

                                speaker.Character.Torso.CFrame = p.Character.Torso.CFrame

                        end

                elseif (string.sub(string.lower(msg),1,13)==string.lower("~respawn.mass")) then

                        local p = game.Players:GetChildren()

                        for i = 1,#p do

                                respawn(p[i])

                        end

                elseif (string.sub(string.lower(msg),1,8)==string.lower("~summon ")) then

                        local p = findPlayer(string.sub(msg,9))

                        if (p==nil) then return playernil(speaker) end

                        if (speaker.Character:findFirstChild("Torso")~=nil) and (p.Character:findFirstChild("Torso")~=nil) then

                                p.Character.Torso.CFrame = speaker.Character.Torso.CFrame

                        end

                elseif (string.sub(string.lower(msg),1,9)==string.lower("~respawn ")) then

                        local p = findPlayer(string.sub(msg,10))

                        if (p==nil) then return playernil(speaker) end

                        respawn(p)

                elseif (string.sub(string.lower(msg),1,1)==string.lower("~")) then

                        notify(speaker, "Error: Trying to Perform an Illegal Command '"..msg.."'.")

                end

        end

end


function onEnter(newPlayer)

        newPlayer.Chatted:connect(function(msg) onChat(msg, newPlayer) end)

        for i = 1,#pdc do

                if (string.lower(newPlayer.Name)==string.lower(pdc[i])) then

                        newPlayer:remove()

                end

        end

end


function onLeave(leavingPlayer)

        for i = 1,#ab do

                if (string.lower(leavingPlayer.Name)==string.lower(ab[i])) then

                        abActivate(leavingPlayer.Name)

                end

        end

end


game.Players.PlayerAdded:connect(onEnter)

game.Players.PlayerRemoving:connect(onLeave)


local p = game.Players:GetChildren()

for i = 1,#p do

        onEnter(p[i])

end