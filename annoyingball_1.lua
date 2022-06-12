

local ball = Instance.new("Model",workspace)
workspace.Base:remove()
y = 0
thing = 200
main = CFrame.new(0,thing/4,0) * CFrame.Angles(0,y,0)
go = 0.235

local col = 0

function circle()
	for i=0,math.pi*2,go do
		local p = Instance.new("Part",ball)
		p.formFactor = "Custom"
		p.Size = Vector3.new(thing/4,thing/4,5)
		p.Anchored = true
		p.TopSurface = 0
		p.BottomSurface = 0
		p.Elasticity = 1
		p.Friction = 0
		p.BrickColor = BrickColor.new(Color3.new(col,0,0))
		p.CFrame = main * CFrame.Angles(i,0,0) * CFrame.new(0,0,thing)
		col = col + 0.08
		if col >= 1 then
			col = 0
		end
	end
end

function yes(path)
	if path:IsA("BasePart") then
		path.Friction = 0
		path.Elasticity = 1
		local bf = Instance.new("BodyForce",path)
		bf.force = Vector3.new(0,path:GetMass()*196.3,0)
		coroutine.resume(coroutine.create(function()
			while true do
				wait(4)
				path.RotVelocity = Vector3.new(math.random(-80,80),math.random(-80,80),math.random(-80,80))
				wait(0.5)
				path.Velocity = path.CFrame.lookVector * 500
			end
		end))
	end
	local h = path:findFirstChild("Humanoid")
	if h ~= nil then
		h.Sit = true
		h.Changed:connect(function(prop)
			h.Sit = true
		end)
	end
	for _,v in pairs(path:children()) do
		yes(v)
	end
end

yes(workspace)

repeat
	circle()
	y = y + go
	main = main * CFrame.Angles(0,go,0)
until y >= math.pi

