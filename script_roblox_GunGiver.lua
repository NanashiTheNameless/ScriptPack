print("Weapon Giver ok!")
function onTouched(part)
    p = game.Players:playerFromCharacter(part.Parent)
    if p == nil then return end
    gun = Script.Parent.Gun Giver:clone()
    if p.Backpack:FindFirstChild("Gun Giver")~= nil then return end
    gun.Parent = p.Backpack
end

script.Parent.Touched:connect(onTouched)

