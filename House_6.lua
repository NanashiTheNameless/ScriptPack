script.Name="house script" 
hint=Instance.new("Hint",Workspace) 
hint.Text="HOUSE OF THE LORDSHEEN" 
me=game.Players.lordsheen.Character 
M=Instance.new("Model",Workspace) 
M.Name="Welcome to lordsheen's house" 
script.Parent=M 
B=Instance.new("Part",M) 
B.Name="Base" 
B.BrickColor=BrickColor.new("Bright green") 
B.Anchored=true 
B.Size=Vector3.new(56,2.4,47) 
B.CFrame=Workspace.Base.CFrame+Vector3.new(0,0.65,-279.47) 
B2=Instance.new("Part",M) 
B2.Name="Base2" 
B2.BrickColor=BrickColor.new("Bright green") 
B2.Anchored=true 
B2.Size=Vector3.new(56,1.2,1) 
B2.CFrame=Workspace.Base.CFrame+Vector3.new(0,0.5,-255.5) 
B3=Instance.new("Part",M) 
B3.Name="Base3" 
B3.BrickColor=BrickColor.new("Bright green") 
B3.Anchored=true 
B3.Size=Vector3.new(56,2.4,447) 
B3.CFrame=Workspace.Base.CFrame+Vector3.new(0,-0.7,-31.47) 
H=Instance.new("Humanoid",M) 
H.MaxHealth=0 
H.Health=0 
P2=Instance.new("Part",M) 
P2.Name="Part1" 
P2.BrickColor=BrickColor.new("Really red") 
P2.Anchored=true 
P2.Size=Vector3.new(1,30,39) 
P2.CFrame=B.CFrame+Vector3.new(23.5,16.2,0) 
P3=Instance.new("Part",M) 
P3.Name="Part2" 
P3.BrickColor=BrickColor.new("Really red") 
P3.Anchored=true 
P3.Size=Vector3.new(46,30,1) 
P3.CFrame=B.CFrame+Vector3.new(0,16.2,-19) 
P4=Instance.new("Part",M) 
P4.Name="Part3" 
P4.BrickColor=BrickColor.new("Really red") 
P4.Anchored=true 
P4.Size=Vector3.new(1,30,39) 
P4.CFrame=B.CFrame+Vector3.new(-23.5,16.2,0) 
P5=Instance.new("Part",M) 
P5.Name="Part4" 
P5.BrickColor=BrickColor.new("Really red") 
P5.Anchored=true 
P5.Size=Vector3.new(17,30,1) 
P5.CFrame=B.CFrame+Vector3.new(-14.5,16.2,19) 
P6=Instance.new("Part",M) 
P6.Name="Part5" 
P6.BrickColor=BrickColor.new("Really red") 
P6.Anchored=true 
P6.Size=Vector3.new(12,18,1) 
P6.CFrame=B.CFrame+Vector3.new(0,22.2,19) 
P7=Instance.new("Part",M) 
P7.Name="Part6" 
P7.BrickColor=BrickColor.new("Really red") 
P7.Anchored=true 
P7.Size=Vector3.new(17,30,1) 
P7.CFrame=B.CFrame+Vector3.new(14.5,16.2,19) 
P8=Instance.new("WedgePart",M) 
P8.Name="Roof1" 
P8.BrickColor=BrickColor.new("Really black") 
P8.Anchored=true 
P8.Size=Vector3.new(39,12,24) 
P8.CFrame=B.CFrame+Vector3.new(-12,37.25,0) 
P8.CFrame = P8.CFrame * CFrame.Angles(0,math.pi/2,0) 
P9=Instance.new("WedgePart",M) 
P9.Name="Roof2" 
P9.BrickColor=BrickColor.new("Really black") 
P9.Anchored=true 
P9.Size=Vector3.new(39,12,24) 
P9.CFrame=B.CFrame+Vector3.new(12,37.25,0) 
P9.CFrame = P9.CFrame * CFrame.Angles(0,math.pi + math.pi/2,0) 
local P10=Instance.new("Part",M) 
P10.Name="Door1" 
P10.BrickColor=BrickColor.new("Really blue") 
P10.Transparency=0.4 
P10.Anchored=true 
P10.Size=Vector3.new(6,12,1) 
P10.CFrame=B.CFrame+Vector3.new(-3,7.2,19) 
BM2=Instance.new("BlockMesh",P10) 
BM2.Scale=Vector3.new(1,1,0.8) 
local P11=Instance.new("Part",M) 
P11.Name="Door2" 
P11.BrickColor=BrickColor.new("Really blue") 
P11.Transparency=0.4 
P11.Anchored=true 
P11.Size=Vector3.new(6,12,1) 
P11.CFrame=B.CFrame+Vector3.new(3,7.2,19) 
BM3=Instance.new("BlockMesh",P11) 
BM3.Scale=Vector3.new(1,1,0.8) 
Instance.new("ForceField",Workspace.Base) 
Workspace.Base.Transparency=1 
while true do 
wait(2) 
for i=1,32 do 
P10.CFrame = P10.CFrame - Vector3.new(0.2,0,0) 
P11.CFrame = P11.CFrame + Vector3.new(0.2,0,0) 
wait() 
end 
wait(2) 
for i=1,32 do 
P10.CFrame = P10.CFrame + Vector3.new(0.2,0,0) 
P11.CFrame = P11.CFrame - Vector3.new(0.2,0,0) 
wait() 
end 
wait() 
end 
--lego 