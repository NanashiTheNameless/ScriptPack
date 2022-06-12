local c = game.Workspace:GetChildern9)
ofr i=1, #c do
    if c[i].className == "Part" then
        c[i].Anchored = false
        c[i].CanCollide = false
    end
end