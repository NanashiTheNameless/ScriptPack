--[[


hl/https://code.stypi.com/raw/wM8iD3Zas3Zs9iu8zDf5CiZH

hnl/mat/https://code.stypi.com/raw/wM8iD3Zas3Zs9iu8zDf5CiZH
]]
tank=game.Players.LocalPlayer.Character
local oldPos=tank.Torso.Position
local speed=tank.Humanoid.WalkSpeed
tank:ClearAllChildren()
function  cp(size) local p=Instance.new("Part", tank); p.Material="SmoothPlastic" p.FormFactor="Custom"; p.Size=size; p.Anchored=true; p.TopSurface="SmoothNoOutlines"; p.BottomSurface="SmoothNoOutlines"; p.LeftSurface="SmoothNoOutlines"; p.RightSurface="SmoothNoOutlines"; p.FrontSurface="SmoothNoOutlines"; p.BackSurface="SmoothNoOutlines" return p end

base=cp(Vector3.new(5, 1, 5))
base.Position=oldPos-Vector3.new(0, 3, 0)
base.BrickColor=BrickColor.new("sDark stone grey")
Instance.new("CylinderMesh", base)
base.Name="Torso" 

size=math.sqrt((base.Size.X^2)/2)
hull=cp(Vector3.new(size, 2, size))
hull.Position=base.Position+Vector3.new(0, 1.5, 0)
Instance.new("SpecialMesh", hull).MeshType=Enum.MeshType.Torso
hull.BrickColor=BrickColor.new("Bright red")
hull.CanCollide=false
hull.Name="Head"

barrel=cp(Vector3.new(1.25, 3,1.25))
Instance.new("CylinderMesh", barrel)
barrel.CFrame=CFrame.Angles(math.pi/2, 0, 0)
barrel.CanCollide=false
barrel.Position=hull.Position+Vector3.new(0, 0, -((size/2)+1.5))
barrel.BrickColor=BrickColor.new("Medium stone grey")

barreltip=cp(Vector3.new(1.25, .5,1.25))
Instance.new("CylinderMesh", barreltip)
barreltip.CFrame=CFrame.Angles(math.pi/2, 0, 0)
barreltip.Position=hull.Position+Vector3.new(0, 0, -((size/2)+3.25))
barreltip.BrickColor=BrickColor.new("Really black")
barreltip.CanCollide=false
for _, c in pairs(tank:GetChildren()) do
	if c:IsA("BasePart") then
		c.Anchored=false
	end
end

for _, c in pairs(tank:GetChildren()) do
	if c:IsA("BasePart") and c~=base then
		local w=Instance.new("Weld", base)
		w.Part0=base
		w.C0=base.CFrame:inverse()*c.CFrame
		w.Part1=c
	end
end
local cooldown=0
tank.ChildAdded:connect(function(c) if  c:IsA("BodyColors") or c:IsA("Shirt") or c:IsA("Pants") then c:Destroy() end end)
local hum = Instance.new("Humanoid", tank)
hum.Died:connect(function()
script:Destroy()
local env=getfenv()
table.foreach(env, function(k)env[k]=nil;end)
end)
hum.WalkSpeed=speed
workspace.CurrentCamera.CameraSubject=hum
m=game.Players.LocalPlayer:GetMouse()
local bdown=false
m.Button1Down:connect(function()
base.CFrame=CFrame.new(base.CFrame.p, Vector3.new(m.Hit.p.x, base.CFrame.p.y, m.Hit.p.z))
hum.AutoRotate=false
if (base.CFrame.p-m.Hit.p).magnitude<50 and tick()-cooldown>=3 and hum.Health>0 then
    cooldown=tick()
	coroutine.wrap(function()
local p=Instance.new("Part", workspace)
p.CanCollide=false
p.Anchored=true
p.BrickColor=BrickColor.new("Bright red")
p.FormFactor=Enum.FormFactor.Custom
p.Size=Vector3.new(.5, .5, ((barreltip.CFrame*CFrame.new(0, -barreltip.Size.Y/2, 0)).p-m.Hit.p).magnitude)
p.CFrame=CFrame.new((barreltip.CFrame*CFrame.new(0, -barreltip.Size.Y/2, 0)).p:lerp(m.Hit.p, .5), m.Hit.p)
local disappear=1
game:GetService"Debris":AddItem(p, disappear)
for i=.1, .6, .1 do
p.Transparency=.4+i
wait(disappear/6)
end
	end)()
local oldParent=tank.Parent
tank.Archivable=true
local clone=tank:Clone()
for _, p in pairs(clone:GetChildren()) do
	if p:IsA("BasePart") then
		p.Anchored=true
	end
end
tank.Parent=nil
clone.Parent=workspace
Instance.new("Explosion", workspace).Position=m.Hit.p
wait()
tank.Parent=oldParent
clone:Destroy()
end
bdown=true
end)
m.Button1Up:connect(function()
bdown=false
hum.AutoRotate=true
end)
m.Move:connect(function()
	if bdown and base then
		base.CFrame=CFrame.new(base.CFrame.p, Vector3.new(m.Hit.p.x, base.CFrame.p.y, m.Hit.p.z))
	end
end)