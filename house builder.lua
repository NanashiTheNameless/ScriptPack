me = game.Players.ace28545

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

function remove(thing)
	thing.Parent = nil
end

local mod = Instance.new("Model",workspace)
mod.Name = "HouseMake, xS"

function makeroom(pos)
	local floor = Instance.new("Part")
	prop(floor,mod,true,0,0,35,1,35,"Black",true,"Custom")
	floor.CFrame = pos
	local roof = Instance.new("Part")
	prop(roof,mod,true,0,0,35,1,35,"Black",true,"Custom")
	roof.CFrame = floor.CFrame * CFrame.new(0,13,0)
	for i=-90,179,90 do
		local wall = Instance.new("Part")
		prop(wall,mod,true,0,0,36,13,1,"White",true,"Custom")
		wall.CFrame = pos * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,wall.Size.Y/2,floor.Size.X/2)
		local click = Instance.new("ClickDetector",wall)
		click.MouseClick:connect(function()
			local poz = wall.CFrame * CFrame.new(0,-wall.Size.Y/2,floor.Size.X/2)
			makeroom(poz)
			for o= -12 ,12, 24 do
				local wa = Instance.new("Part")
				prop(wa,mod,true,0,0,12,13,1,"White",true,"Custom")
				wa.CFrame = wall.CFrame * CFrame.new(o,0,0)
			end
			wall:remove()
		end)
	end
end

makeroom(CFrame.new(me.Character.Torso.Position) * CFrame.new(0,-2,40))
