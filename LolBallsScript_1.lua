Plrs = game:GetService("Players")
me = game.Players.SergeantSmokey
char = me.Character
torso = char.Torso
dist = 6

cols = {"Hot pink", "Really red", "Really blue", "New Yeller", "Lime green", "Neon orange"}
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end

for i=1,50 do
	local p = Instance.new("Part")
	prop(p,char,false,0,0,0.4,0.4,0.4,cols[math.random(1,#cols)],false,"Custom")
	Instance.new("SpecialMesh",p).MeshType = "Sphere"
	local bp = Instance.new("BodyPosition",p)
	bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	bp.P = 20000
	bp.position = p.Position
	local way = CFrame.Angles(0,0,0)
	local pos = CFrame.new(torso.Position) * CFrame.Angles(math.random(-320,320)/100,math.random(-320,320)/100,math.random(-320,320)/100)
	p.CFrame = pos
	coroutine.resume(coroutine.create(function()
		while true do
			wait()
			pos = CFrame.new(torso.Position) * way * CFrame.new(0,dist,0)
			way = way * CFrame.Angles(math.random(0,50)/400,math.random(0,50)/400,math.random(0,50)/400)
			bp.position = pos.p
		end
	end))
	p.Touched:connect(function(o)
		if o.Anchored == false and o.Parent ~= char then
			o.Velocity = CFrame.new(torso.Position, o.Position).lookVector * 250
		end
	end)
end
