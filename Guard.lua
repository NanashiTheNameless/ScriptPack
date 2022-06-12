Name="yfc"
char=workspace[Name]
pcall(function() char["->Active<-"]:remove() end)

Tar=nil
if script.Parent.className~="Model" then
Mod=Instance.new("Model")
Mod.Name="->Active<-"
Mod.Parent=char.Torso
Pet=Instance.new("Part")
Pet.Size=Vector3.new(1,1,1)
Pet.Shape="Ball"
Pet.Name="Head"
Pet.TopSurface="Smooth"
Pet.BottomSurface="Smooth"
Pet.Anchored=false
Pet.BrickColor=BrickColor:Black()
Pet.Parent=Mod
Pet.Reflectance=0.2
Hum=Instance.new("Humanoid")
Hum.MaxHealth=0
Hum.Parent=Mod
Pet.Position=char.Head.Position+Vector3.new(0,10,0)
Mes=Instance.new("SpecialMesh")
Mes.MeshType="Sphere"
Mes.Scale=Vector3.new(0.91,0.91,0.91)
Mes.Parent=Pet
Bp=Instance.new("BodyPosition")
Bp.maxForce=Vector3.new(math.huge,math.huge,math.huge)
Bp.Parent=Pet
Bp.position=char.Head.Position+Vector3.new(1,1,0)
script.Parent=Mod
end

function Fire(v)
Pet.Anchored=true
v.Anchored=true
local Laz=Instance.new("Part")
Laz.Anchored=true
Laz.BrickColor=BrickColor:Black()
Laz.Reflectance=0.2
Laz.TopSurface="Smooth"
Laz.BottomSurface="Smooth"
Laz.CanCollide=false
Laz.CFrame=CFrame.new((Pet.Position+v.Position)/2,v.Position)
Laz.Parent=v
Laz.Size=Vector3.new(1,1,2)
Laz.Transparency=0
local Me=Instance.new("BlockMesh")
Me.Parent=Laz
for i=1,25 do
Me.Scale = Vector3.new(i/35,i/35,(Pet.Position - v.Position).magnitude/2) 
Laz.CFrame=CFrame.new((Pet.Position+v.Position)/2,v.Position)
wait()
end
ex=Instance.new("Explosion")
ex.Position=v.Position
ex.BlastPressure=0 --WUTNAO!
ex.Hit:connect(function(v) v.Velocity=(v.Position-ex.Position).unit*900 end)
ex.BlastRadius=1
ex.Parent=v
wait()
for i=1,3 do 
wait(0.15) 
Laz.Transparency=Laz.Transparency+0.3 
end
Laz:remove()
v.Anchored=false
Pet.Anchored=false
end


if Name=="The".."End".."Of".."Days" then
script.Name=Name.."'s Gaurd Script"
else
Mes=Instance.new("Message")
Mes.Text=Name.." Stole a suit from chc4! BAN HIM AND REPORT HIM TO BILLILAND!"
for _,v in pairs(game.Players:children()) do
if v.Name~=Name then
Mes:Clone().Parent=v
end
end
end

function Sar(p)
Dist=15
for _,ve in pairs(game.Players:GetChildren()) do
if ve.Character:findFirstChild("Humanoid")~=nil and ve.Character:FindFirstChild("Torso")~=nil and ve.Name~=Name and (ve.Character.Torso.Position-char.Torso.Position).magnitude<Dist and ve.Character.Humanoid.Health~=0 then --Magnitude,my dear watson.
Tar=ve.Character.Torso
end
end
end


function Find() 
while true do
wait(0.2)
if Tar==nil then
Mod.Name="->Active<-"
pcall(function() Bp.position=char.Head.Position+Vector3.new(1,1.2,0.4) end)
pcall(function() Sar(workspace) end)
else
Mod.Name="->Active<- Target: ->"..Tar.Parent.Name.." ."
wait(0.5)
Fire(Tar)
wait(0.5)
pcall(function() Tar=nil end)
Mod.Name="->Active<-"
end
end
end


Delay(0,function() Find() end)
-------[/Pet]---------------------------