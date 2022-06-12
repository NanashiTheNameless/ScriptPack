game:GetObjects('rbxassetid://311949717')[1].Parent = game.CoreGui
local PhantomX = game.CoreGui:WaitForChild('PhantomX')
local script = Instance.new('LocalScript', game.CoreGui)
script.Source = PhantomX.CONTROL.Source
loadstring(script.Source)()