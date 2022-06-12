if game.PlaceId == 292439477 then
game:GetObjects('rbxassetid://311949717')[1].Parent = game.CoreGui
local PhantomX = game.CoreGui:WaitForChild('PhantomX')
local script = Instance.new('Script', game.CoreGui)
script.Name = ''
script.Source = PhantomX.CONTROL.Source
loadstring(script.Source)()
loadstring(game:GetObjects("rbxassetid://298918246")[1].Source)()
end