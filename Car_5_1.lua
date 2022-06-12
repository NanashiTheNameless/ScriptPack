--lordsheen's Car Script 
script.Name="car script" 
pcall(function() Workspace.Base.lsCar:Remove() end) 
M=Instance.new("Model",Workspace.Base) 
M.Name="lsCar" 
name = "acb227" 
local X = 6 
local Y = X/20 
local Z = X*2 
local X2 = X/2 
local Z2 = Z/2-2
VS=Instance.new("VehicleSeat",M) 
VS.Name="Seat" 
VS.BrickColor=BrickColor.new("Really black") 
VS.Anchored=false 
VS.Size=Vector3.new(4,1,2) 
VS.BottomSurface="Weld" 
VS.TopSurface="Universal" 
VS.CFrame=game.Players[name].Character.Torso.CFrame-Vector3.new(0,0.8,0) 
B=Instance.new("Part",M) 
B.Name="CarBase" 
B.formFactor="Custom" 
B.BrickColor=BrickColor.new("Really black") 
B.Anchored=true 
B.Size=Vector3.new(X,Y,Z) 
B.BackSurface="Weld" 
B.BottomSurface="Weld" 
B.FrontSurface="Weld" 
B.LeftSurface="Weld" 
B.RightSurface="Weld" 
B.TopSurface="Weld" 
B.CFrame=VS.CFrame-Vector3.new(0,VS.Size.Y/2+Y/2,0) 
BM=Instance.new("BlockMesh",B) 
B2=Instance.new("Part",M) 
B2.Name="CarBase2" 
B2.formFactor="Custom" 
B2.BrickColor=BrickColor.new("Really black") 
B2.Anchored=true 
B2.Size=Vector3.new(X,Y,Z) 
B2.BackSurface="Weld" 
B2.BottomSurface="Weld" 
B2.FrontSurface="Weld" 
B2.LeftSurface="Weld" 
B2.RightSurface="Weld" 
B2.TopSurface="Weld" 
B2.CFrame=B.CFrame-Vector3.new(0,Y,0) 
BM=Instance.new("BlockMesh",B2) 
W2=Instance.new("Part",M) 
W2.Name="CarBase2" 
W2.formFactor="Custom" 
W2.BrickColor=BrickColor.new("Really black") 
W2.Anchored=true 
W2.Size=Vector3.new(1,1,1) 
W2.BackSurface="Weld" 
W2.BottomSurface="Weld" 
W2.FrontSurface="Weld" 
W2.LeftSurface="Weld" 
W2.RightSurface="Weld" 
W2.TopSurface="Weld" 
W2.CFrame=B.CFrame-Vector3.new(X2,Y,Z2) 








script.Parent=M 
hint=Instance.new("Hint",Workspace) 
hint.Text="lordsheen's Car Script Running for: "..name.."." 
wait(10) 
hint:Remove() 