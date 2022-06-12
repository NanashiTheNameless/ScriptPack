if script.Parent.className~="HopperBin" then 
ma=Instance.new("HopperBin") 
ma.Name="Tool" 
ma.Parent=game.Lighting 
script.Parent=ma 
end 

local bin = script.Parent 
--scripts in here 

game.Lighting.Tool.Parent=game.Players.lordsheen.backpack 

--by SOPs 