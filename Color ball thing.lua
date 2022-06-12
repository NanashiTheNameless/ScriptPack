terrain = workspace.Terrain
spheremodel = Instance.new('Model',terrain)
spheremodel.Name = 'Sphere'
part = Instance.new('Part')
part.Anchored = true
part.CanCollide = true
--x,z
part.Size = Vector3.new(.5,7,.5)
part.Material = Enum.Material.Neon
part.Transparency = .95
part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
part.BrickColor = BrickColor.White()

ballCFrame = CFrame.new(15,15,15)

local diameter = 7
local circ = math.pi*diameter
local n = circ/.5
local rot = 360/n

for x = 0,n/2 do
	wait()
	for i = 0,n/2 do
		wait()
		local clone = part:Clone()
		clone.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
		clone.Parent = spheremodel
		clone.CFrame = CFrame.new(20,20,20)*CFrame.Angles(math.rad(i*rot),0,math.rad(x*rot))
	end
end
wait(1)
all,last = {}
function scan(p)
	for i,v in pairs(p:GetChildren()) do
		if (v:IsA("BasePart")) then
			if (last) then
				local w = Instance.new("Weld")
				w.Part0,w.Part1 = last,v
				w.C0 = v.CFrame:toObjectSpace(last.CFrame):inverse()
				w.Parent = last
			end
			table.insert(all,v)
			last = v
		end
		scan(v)
		v.Anchored = false
	end
end
scan(spheremodel)