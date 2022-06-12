nam = "xSoulStealerx"
me = game.Players[nam]
char = me.Character
selected = false
hold = false
mode = "color"

happycolors = {"Really blue", "New Yeller", "Lime green", "Really red"}

if char:findFirstChild("Ayebull",true) then
	char:findFirstChild("Ayebull",true):remove()
end

function prop(part, parent, collide, shape, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.Shape = shape
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

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end

bp = nil
bg = nil
model = nil
ball = nil
ayh = nil
tray = nil
tm = nil

function makeball()
local eye = Instance.new("Model")
eye.Name = "Ayebull"
model = eye

local main = Instance.new("Part")
prop(main,eye,true,"Ball",0,0,2.6,2.6,2.6,"Institutional white",false,"Custom")
main.CFrame = CFrame.new(char.Head.Position) + Vector3.new(0,4,0)
ball = main

local aye = Instance.new("Part")
prop(aye,eye,true,"Ball",0,0,0.7,0.7,0.7,"Really black",false,"Custom")
aye.CFrame = main.CFrame
w1 = Instance.new("Weld")
weld(w1,main,aye,0,0,0,0,0,1.15)
ayh = aye

local aye2 = Instance.new("Part")
prop(aye2,eye,true,"Ball",0,0,1.5,1.5,1.5,"Medium blue",false,"Custom")
aye2.CFrame = main.CFrame
w2 = Instance.new("Weld")
weld(w2,main,aye2,0,0,0,0,0,0.6)

local bo = Instance.new("BodyPosition",main)
bo.P = 10000
bo.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bo.position = char.Head.Position + Vector3.new(0,5,0)
bp = bo

local bl = Instance.new("BodyGyro",main)
bl.P = 100000
bl.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg = bl

local trail = Instance.new("Part")
prop(trail,nil,false,"Block",0,0,0.2,0.2,1,"White",true,"Custom")
tray = trail

local tme = Instance.new("SpecialMesh",trail)
mesh(tme,trail,1,1,1,"Brick")
tm = tme

coroutine.resume(coroutine.create(function()
	while true do
		wait()
		if char:findFirstChild("Head",true) then
			bp.position = char.Head.Position + Vector3.new(0,5,0)
		end
	end
end))

eye.Parent = char
end

makeball()

if script.Parent.className ~= "HopperBin" then
	local h = Instance.new("HopperBin",me.Backpack)
	h.Name = "Ayebull"
	script.Parent = h
end

bin = script.Parent

function sel(mouse)
	selected = true
	coroutine.resume(coroutine.create(function()
		while selected do
			wait()
			bg.cframe = CFrame.new(ball.Position, mouse.Hit.p)
		end
	end))
	mouse.Button1Down:connect(function()
		hold = true
		tray.BrickColor = BrickColor.new("Really red")
		tray.Parent = model
		coroutine.resume(coroutine.create(function()
			while hold do
				wait()
				local dist = (ayh.Position - mouse.Hit.p).magnitude
				tm.Scale = Vector3.new(1,1,dist)
				tray.CFrame = CFrame.new(ayh.Position, mouse.Hit.p) * CFrame.new(0,0,-dist/2)
			end
		end))
		if mode == "color" then
			local col = happycolors[math.random(1,#happycolors)]
			tray.BrickColor = BrickColor.new(col)
			coroutine.resume(coroutine.create(function()
				while hold do
					if mouse.Target ~= nil then
						if mouse.Target.Name ~= "Base" then
							mouse.Target.BrickColor = tray.BrickColor
						end
					end
					wait()
				end
			end))
		elseif mode == "remove" then
			tray.BrickColor = BrickColor.new("Bright red")
			if mouse.Target ~= nil then
				if mouse.Target:GetMass() < 3000 then
					mouse.Target:remove()
				end
			end
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
		tray.Parent = nil
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
			mode = "color"
		elseif key == "f" then
			mode = "remove"
		end
	end)
end

function desel()
	selected = false
end

bin.Selected:connect(sel)
bin.Deselected:connect(desel)
