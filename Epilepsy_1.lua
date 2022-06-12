math.randomseed(6)
s=Instance.new("Sound",workspace)
s.SoundId='rbxassetid://171217870'
s.Volume=10
s.Looped=true 
s:play()
m = false
repeat wait(0)
num1="-"..math.random(0,500).."00000"
num2="-"..math.random(0,500).."00000"
num3="-"..math.random(0,500).."00000"
game.Lighting.FogColor=Color3.new(tonumber(num1),tonumber(num2),tonumber(num3))
game.Lighting.FogEnd=9e9
until m==true