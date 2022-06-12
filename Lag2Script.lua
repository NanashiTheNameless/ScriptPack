while true do
 wait()
  for _,v in pairs(game.Players:GetChildren())
   Instance.new("HopperBin",v.Backpack)
  end
end