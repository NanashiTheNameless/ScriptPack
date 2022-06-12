colorc=Instance.new("ColorCorrectionEffect",game.Lighting)
wait()
spawn(function()
   while wait() do
       colorc.Contrast=math.random(-1000,1000)
       colorc.Saturation=math.random()
       colorc.TintColor = Color3.new(math.random(), math.random(), math.random())
   end
end)

spawn(function()
   while wait() do
       game.Lighting:SetMinutesAfterMidnight(0)
       wait()
       game.Lighting:SetMinutesAfterMidnight(14 * 60)
   end
end)