Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

modelname = "pips"

me = game.Players.yfc

allowed = {{me.Name, 10}, {"Zewl", 9}, {"Fenrier", 9}}

Pos = Vector3.new(-100,1,0)



function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break, CF)

	local p = Instance.new("Part")

	p.formFactor = "Custom"

	p.Anchored = Anchor

	p.CanCollide = Collide

	p.Transparency = Tran

	p.Reflectance = Ref

	p.BrickColor = BrickColor.new(Color)

	for _, Surf in pairs(Surfaces) do

		p[Surf] = "Smooth"

	end

	p.Size = Vector3.new(X, Y, Z)

	p.CFrame = CF

	if Break then

		p:BreakJoints()

	else p:MakeJoints() end

	p.Parent = Parent

	return p

end



function makehouse()

	local hmm = workspace:findFirstChild(modelname)

	if hmm ~= nil then hmm:remove() end

	local m = Instance.new("Model")

	m.Name = modelname

	for i = 0, math.pi, math.pi/3 do

		Part(m, true, true, 0, 0, "Dark grey", 115.5*0.85, 1, 200*0.85, true,

		CFrame.new(Pos) * CFrame.Angles(0,i+(math.pi/6),0)) 

		Part(m, true, true, 0, 0, "Dark grey", 115.5*0.85, 1, 200*0.85, true,

		CFrame.new(Pos) * CFrame.new(0,39,0) * CFrame.Angles(0,i+(math.pi/6),0)) 

	end

	for i = 0, (math.pi*2)-(math.pi/3), math.pi/3 do

		if i ~= 0 then

		Part(m, true, true, 0, 0, "Dark grey", 115.5*0.85, 4, 2, true,

		CFrame.new(Pos) * CFrame.Angles(0,i+(math.pi/2+math.pi),0) * CFrame.new(0,1.5,-(200*0.84)*0.5))

		Part(m, true, true, 0.4, 0.25, "Light blue", 115.5*0.85, 9, 0.7, true,

		CFrame.new(Pos) * CFrame.Angles(0,i+(math.pi/2+math.pi),0) * CFrame.new(0,8,-(200*0.84)*0.5))

		Part(m, true, true, 0, 0, "Dark grey", 115.5*0.85, 26, 2, true,

		CFrame.new(Pos) * CFrame.Angles(0,i+(math.pi/2+math.pi),0) * CFrame.new(0,25.5,-(200*0.84)*0.5))

		end

	end

	m.Parent = workspace

end

makehouse()

