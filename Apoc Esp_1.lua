--Thanks To HessaFTW
--Hessa Is the one that made this compalation
--Have eny scripts that arent in here send them to HessaFTW and he will test and put in for next update


--[[ 

    APOC ESP SCRIPT // RAINDROP

    BRACK4712

--]]

for i,v in pairs(game.Players:GetChildren()) do
    local handle = Instance.new("Handles",game.Players.LocalPlayer.PlayerGui)
    handle.Adornee = v.Character.Head
    handle.Color3 = Color3.new(0/255, 255/255, 0/255)
    handle.Transparency = 0
    handle.Style = "Resize"
end

--Not playable in 1st person becouse of dot on ur player