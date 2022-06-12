--orgy

train=require(307227743)

gr={}

for _, p in pairs(game.Players:GetPlayers()) do
    table.insert(gr, p)
    if #gr==3 then
        print"orgy time"
        for i=1, 3 do
          gr[i]:LoadCharacter()  
        end
        wait()
        train(gr[1].Character, gr[2].Character, gr[3].Character)
        gr={}
    end
end