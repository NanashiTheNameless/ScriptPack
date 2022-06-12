local Admins = {XboxLive1239}

function Kill(Players)
    for i,Player in ipairs(Players) do
        if Player.Character then
            Player.CharacterBreakJoints()
        end
    end
end

function IsAdmin(Player)
    for i,AdminName in ipairs(Admins) do
        if Player.Namelower() == AdminNamelower() then return true end
    end
    return false
end

function GetPlayers(Player,Msg)
    local Targets = {}
    local Players = Game.PlayersGetPlayers()

    if Msglower() == me then
        Targets = { Player }
    elseif Msglower() == all then
        Targets = Players
    elseif Msglower() == others then
        for i,Plr in ipairs(Players) do
            if Plr ~= Player then
                table.insert(Targets,Plr)
            end
        end
    else
        for i,Plr in ipairs(Players) do
            if Plr.Namelower()sub(1,Msglen()) == Msg then
                table.insert(Targets,Plr)
            end
        end
    end
    return Targets
end

Game.Players.PlayerAddedconnect(function(Player)
    if IsAdmin(Player) then
        Player.Chattedconnect(function(Msg)
            if Msglower()sub(1,6) == kill  then
                Kill(GetPlayers(Player,Msgsub(7)))
            end
        end)
    end
end)