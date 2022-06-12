Parts={}

local Water=Instance.new("Model",Workspace)
Water.Name="Water"

s=20
p=Instance.new("Seat")
p.Parent=Water
p.Locked=true
p.Size=Vector3.new(2,1,4)
p.formFactor=0
p.Anchored=false 
bg = Instance.new("BodyGyro") 
bg.Parent = p 
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyPosition") 
bg.Parent = p 
bg.position = Vector3.new(s,6,6) 
bg.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
p.CFrame=CFrame.new(s,6,6)*CFrame.Angles(0,math.rad(360/4),0)
p.BrickColor=BrickColor.new("Hot Pink")
p.Transparency=0
p.CanCollide=false
local m=Instance.new("BlockMesh")
m.Parent=p
m.Bevel = 0.1
table.insert(Parts,p)
p=Instance.new("Seat")
p.Parent=Water
p.Locked=true
p.Size=Vector3.new(2,1,4)
p.formFactor=0
p.Anchored=false 
bg = Instance.new("BodyGyro") 
bg.Parent = p 
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyPosition") 
bg.Parent = p 
bg.position = Vector3.new(s,6,0) 
bg.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
p.CFrame=CFrame.new(s,6,0)*CFrame.Angles(0,math.rad(360/4),0)
p.BrickColor=BrickColor.new("Really red")
p.Transparency=0
p.CanCollide=false
local m=Instance.new("BlockMesh")
m.Parent=p
m.Bevel = 0.1
table.insert(Parts,p)
p=Instance.new("Seat")
p.Parent=Water
p.Locked=true
p.Size=Vector3.new(2,1,4)
p.formFactor=0
p.Anchored=false 
bg = Instance.new("BodyGyro") 
bg.Parent = p 
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyPosition") 
bg.Parent = p 
bg.position = Vector3.new(s,6,-6) 
bg.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
p.CFrame=CFrame.new(s,6,-6)*CFrame.Angles(0,math.rad(360/4),0)
p.BrickColor=BrickColor.new("Really blue")
p.Transparency=0
p.CanCollide=false
local m=Instance.new("BlockMesh")
m.Parent=p
m.Bevel = 0.1
table.insert(Parts,p)

x=0
for i=1,40 do
local p=Instance.new("Part")
p.Parent=Water
p.Locked=true
p.Size=Vector3.new(50,1,10)
p.formFactor=0
p.Anchored=true
p.CFrame=CFrame.new(x,5,0)*CFrame.Angles(0,math.rad(360/4),0)
p.BrickColor=BrickColor.new("Bright blue")
p.Transparency=0.9
p.CanCollide=false

local m=Instance.new("BlockMesh")
m.Parent=p
table.insert(Parts,p)

x=x+1
end

while true do

	for i,v in pairs(Parts) do

		coroutine.resume(coroutine.create(function()
			dir=true

			if dir==true then

				for i=1,10 do
					v.CFrame=v.CFrame*CFrame.new(0, 0.2, 0)
					wait()
				end

				dir=false

			end
			if dir==false then

				for i=1,10 do
					v.CFrame=v.CFrame*CFrame.new(0, -0.2, 0)
					wait()
				end

				dir=true

			end

		end))

	wait()

	end

wait()

end