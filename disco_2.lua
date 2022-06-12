Lighting = game["Lighting"]
ChangeTime = 0.3 -- Seconds between changing of the colors
while true do
 Lighting.Ambient = Color3.new(math.random(0, 255)/255, math.random(0, 255)/255, math.random(0, 255)/255)
 wait(ChangeTime)
end