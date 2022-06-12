--Strategy HQ------------------------------------------------xS productions---------------------------------------------------------------
me = game.Players.xSoulStealerx
mainpos = Vector3.new(100,0.6,100)
dist = 8

smaller = 15

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

function getparts(path)
	local objs = {}
	for _,v in pairs(path:children()) do
		if v:IsA("BasePart") then
			table.insert(objs,v)
		end
		for _,k in pairs(v:children()) do
			if k:IsA("BasePart") then
				table.insert(objs,k)
			end
		end
	end
	return objs
end

mode = Instance.new("Model")
mode.Name = "HQ"

model = Instance.new("Model")
model.Name = "HQ"

for i=math.pi, math.pi*3, math.pi/3 do
	local p = Instance.new("Part")
	prop(p,model,true,0,0,10,35,64,"Black",true,"Custom")
	p.CFrame = CFrame.new(mainpos) * CFrame.Angles(0,i,0) * CFrame.new(50,p.Size.Y/2,0)
	local k = Instance.new("Part")
	prop(k,model,true,0,0,110,10,64,"Black",true,"Custom")
	k.CFrame = CFrame.new(mainpos) * CFrame.Angles(0,i,0) * CFrame.new(0,p.Size.Y,0)
end

local bax = workspace.Base.Size.X
local bay = workspace.Base.Size.Y
local baz = workspace.Base.Size.Z

local fakebase = Instance.new("Part")
prop(fakebase,model,false,0,0,bax/smaller,bay/smaller,baz/smaller,"Dark green",true,"Custom")
fakebase.TopSurface = "Studs"
fakebase.CFrame = CFrame.new(mainpos) * CFrame.new(-20,2,0)

me.Character:MoveTo(mainpos)

coroutine.resume(coroutine.create(function()
	while true do
		wait(0.1)
		local parts = getparts(workspace)
		for _,v in pairs(parts) do
			local kay = v:clone()
			prop(kay,model,true,v.Transparency,v.Reflectance,1,1,1,tostring(v.BrickColor),true,"Custom")
			local posx = v.Position.X/smaller
			local posy = v.Position.Y/smaller
			local posz = v.Position.Z/smaller
			kay.CFrame = CFrame.new(fakebase.Position) * CFrame.new(posx,posy,posz)
			Instance.new("BlockMesh",kay).Scale = Vector3.new(v.Size.X/smaller,v.Size.Y/smaller,v.Size.Z/smaller)
			coroutine.resume(coroutine.create(function() wait(0.1) kay:remove() end))
		end
	end
end))

mode.Parent = workspace
model.Parent = mode
