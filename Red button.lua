mainpos = Vector3.new(10, 1, 0)
scale = 2
Deb = true

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
	return w
end

funcs = {
	function()
		local sca = math.random(60, 120)
		local moo = Instance.new("Model")
		moo.Name = "Rocket"
		local ma = Part(moo, false, true, 1, 0, "Medium grey", sca/1.5, sca*1.5, sca/1.5, true)
		ma.CFrame = CFrame.new(0, 1000, 0)
		Instance.new("SpecialMesh",ma).MeshType = "Sphere"
		for i = 0, 360, 90 do
			local p = Part(moo, false, true, 1, 0, "Bright red", sca/10, sca/2, sca/2.5, true)
			local w = Weld(ma, p, 0, 0, 0, 0, 0, 0)
			w.C0 = CFrame.new(0, sca/5, 0) * CFrame.Angles(0, math.rad(i), 0)
			w.C1 = CFrame.new(0, 0, -sca/3) * CFrame.Angles(math.rad(45), 0, 0)
			Instance.new("SpecialMesh",p).MeshType = "Wedge"
		end
		moo.Parent = workspace
		ma.CFrame = CFrame.new(0, 1000, 0)
		ma.Touched:connect(function()
			pcall(function()
			local a = Instance.new("Explosion",moo)
			a.BlastRadius = 300
			a.BlastPressure = 600000
			a.Position = ma.Position
			end)
			wait()
			moo:remove()
		end)
		coroutine.resume(coroutine.create(function()
			for i,v in pairs(moo:children()) do
				coroutine.resume(coroutine.create(function()
					for i = 1, 0, -0.04 do
						wait()
						v.Transparency = i
					end
					v.Transparency = 0
				end))
			end
		end))
	end,
	function()
		for _,v in pairs(workspace:children()) do
			if v:findFirstChild("Humanoid") then v:BreakJoints() end
		end
	end,
	function()
		for _,v in pairs(workspace:children()) do if game.Players:GetPlayerFromCharacter(v) then v:remove() end end
	end
}
pcall(function() workspace:findFirstChild("lolz",true):remove() end)

ha = Instance.new("Model",workspace)
ha.Name = "lolz"
mo = Instance.new("Model",ha)
mo.Name = "DON'T PRESS THE RED BUTTON!"

main = Part(mo, true, true, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
main.CFrame = CFrame.new(mainpos) * CFrame.new(0, scale/4, 0)

for i = 0, 360, 360/10 do
	local p = Part(mo, true, true, 0, 0, "Really black", scale*0.33, scale/2, scale, true)
	p.CFrame = main.CFrame * CFrame.Angles(0, math.rad(i), 0)
end

buttonpos = CFrame.new(0, scale/4, 0)
button = Part(mo, true, true, 0, 0, "Bright red", scale*0.8, scale/2.5, scale*0.8, true)
button.CFrame = main.CFrame * buttonpos
button.Name = "Head"
Instance.new("CylinderMesh",button)

local hum = Instance.new("Humanoid",mo)
hum.MaxHealth = 0
hum.Health = 0

click = Instance.new("ClickDetector",button)
click.MaxActivationDistance = 15+(scale*2.5)
click.MouseClick:connect(function()
	if Deb then Deb = false
	for i = 0, 1, 0.2 do
		button.CFrame = main.CFrame * buttonpos * CFrame.new(0, -(scale/7)*i, 0)
		wait()
	end
	local a = math.random(1,6)
	if a == 1 then
		a = math.random(1, #funcs)
		funcs[a]()
	end
	for i = 0, 1, 0.2 do
		button.CFrame = main.CFrame * buttonpos * CFrame.new(0, -(scale/7)+(scale/7)*i, 0)
		wait()
	end
	Deb = true
	end
end)
