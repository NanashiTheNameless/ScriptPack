

me = game.Players.yfc

mainpos = Vector3.new(200,0,30)

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

mod = Instance.new("Model",workspace)
mod.Name = "Duel arena by xSoul"

for i=0,math.pi, math.pi/3 do
	local p = Instance.new("Part")
	prop(p,mod,true,0,0,100,7,170,"Brick yellow",true,"Custom")
	p.CFrame = CFrame.new(mainpos) * CFrame.Angles(0,i,0)
	local k = Instance.new("Part")
	prop(k,mod,true,0,0,30,40,30,"Brown",true,"Custom")
	k.CFrame = p.CFrame * CFrame.new(p.Size.Z/2,k.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,mod,true,0,0,30,40,30,"Brown",true,"Custom")
	f.CFrame = p.CFrame * CFrame.new(-p.Size.Z/2,f.Size.Y/2,0)
	local p = Instance.new("Part")
	prop(p,mod,true,0,0,120,20,200,"Brick yellow",true,"Custom")
	p.CFrame = CFrame.new(mainpos) * CFrame.Angles(0,i,0) * CFrame.new(0,k.Size.Y,0)
end

for i=0,math.pi*2,math.pi/30 do
	local p = Instance.new("Part")
	prop(p,mod,true,0,0,4,7,10,"Brown",true,"Custom")
	p.CFrame = CFrame.new(mainpos) * CFrame.Angles(0,i,0) * CFrame.new(60,7,0)
end
