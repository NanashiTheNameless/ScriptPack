me = workspace.yfc.Torso

last = me.Position
cr = 0
cg = 1
cb = 0
mode = true

while true do
	repeat wait() until (last - me.Position).magnitude > 1.5
	local sca = (last - me.Position).magnitude
	local p = Instance.new("Part",me)
	Instance.new("BlockMesh",p).Scale = Vector3.new(0.6,0.5,sca)
	p.Size = Vector3.new(1,1,1)
	p.Anchored = true
	p.CanCollide = false
	p.CFrame = CFrame.new(last,me.Position) * CFrame.new(0,0,-sca/2)
	p.BrickColor = BrickColor.new(Color3.new(cr,cr,0))
	if cr <= 0 then
		mode = true
	elseif cr >= 1 then
		mode = false
	end
	if mode then
		cr = cr + 0.1
		cg = cg - 0.1
	else
		cr = cr - 0.1
		cg = cg + 0.1
	end
	last = me.Position
	coroutine.resume(coroutine.create(function()
		for i=0,1,0.15 do
			wait()
			p.Transparency = i
		end
		p:remove()
	end))
	wait()
end