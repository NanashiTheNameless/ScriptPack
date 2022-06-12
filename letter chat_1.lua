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
part:BreakJoints()
coroutine.resume(coroutine.create(function()
	wait(5)
	part:remove()
end))
end


function a(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,9,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-9,p.Size.Y/2,0)
	local e = Instance.new("Part")
	prop(e,workspace,true,0,0,9,1.2,2.3,"Black",true,"Custom")
	e.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y/4,0) * CFrame.Angles(0,0,-0.4)
end

function b(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y/2,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-8,g.Size.Y/2,0)
	local e = Instance.new("Part")
	prop(e,workspace,true,0,0,8,1.2,2.3,"Black",true,"Custom")
	e.CFrame = CFrame.new(pos) * CFrame.new(-4,e.Size.Y,0)
end

function c(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,9,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,9,1.3,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-4,g.Size.Y,0)
end

function d(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(-8,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y/2,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(0,g.Size.Y/2,0)
	local e = Instance.new("Part")
	prop(e,workspace,true,0,0,8,1.2,2.3,"Black",true,"Custom")
	e.CFrame = CFrame.new(pos) * CFrame.new(-4,e.Size.Y,0)
end

function e(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y/2,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,5,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-8,p.Size.Y/1.2,0)
	local e = Instance.new("Part")
	prop(e,workspace,true,0,0,8,1.2,2.3,"Black",true,"Custom")
	e.CFrame = CFrame.new(pos) * CFrame.new(-4,e.Size.Y,0)
	local u = Instance.new("Part")
	prop(u,workspace,true,0,0,8,1.2,2.3,"Black",true,"Custom")
	u.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y,0)
end

function f(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,9,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4.5,p.Size.Y,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,7,1.3,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-3.5,p.Size.Y/1.8,0)
end

function g(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(-8,0,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y/2,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/4,0)
	local e = Instance.new("Part")
	prop(e,workspace,true,0,0,8,1.2,2.3,"Black",true,"Custom")
	e.CFrame = CFrame.new(pos) * CFrame.new(-4,e.Size.Y,0)
	local u = Instance.new("Part")
	prop(u,workspace,true,0,0,8,1.2,2.3,"Black",true,"Custom")
	u.CFrame = CFrame.new(pos) * CFrame.new(-4,-(p.Size.Y/2),0)
end

function h(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y/2,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-8,p.Size.Y/4,0)
end

function ii(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(-5,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,1.8,1.8,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-5,p.Size.Y*1.2,0)
end

function j(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(-5,0,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,1.8,1.8,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-5,p.Size.Y/1.6,0)
	local c = Instance.new("Part")
	prop(c,workspace,true,0,0,3,1.3,2.3,"Black",true,"Custom")
	c.CFrame = CFrame.new(pos) * CFrame.new(-3.5,-(p.Size.Y/2),0)
end

function k(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-3.5,p.Size.Y/2.7,0) * CFrame.Angles(0,0,-math.pi/4)
	local c = Instance.new("Part")
	prop(c,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	c.CFrame = CFrame.new(pos) * CFrame.new(-3.5,p.Size.Y/6,0) * CFrame.Angles(0,0,math.pi/4)
end

function l(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,20,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(-5,p.Size.Y/2,0)
end

function m(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-10,f.Size.Y/2,0)
	local c = Instance.new("Part")
	prop(c,workspace,true,0,0,10,1.3,2.3,"Black",true,"Custom")
	c.CFrame = CFrame.new(pos) * CFrame.new(-5,p.Size.Y,0)
	local s = Instance.new("Part")
	prop(s,workspace,true,0,0,1.3,5,2.3,"Black",true,"Custom")
	s.CFrame = CFrame.new(pos) * CFrame.new(-5,p.Size.Y/1.4,0)
end

function n(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,11,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-6,f.Size.Y/2,0)
	local c = Instance.new("Part")
	prop(c,workspace,true,0,0,6,1.3,2.3,"Black",true,"Custom")
	c.CFrame = CFrame.new(pos) * CFrame.new(-3,p.Size.Y,0)
end

function o(pos)
	local p = Instance.new("Part")
	prop(p,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	p.CFrame = CFrame.new(pos) * CFrame.new(0,p.Size.Y/2,0)
	local f = Instance.new("Part")
	prop(f,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	f.CFrame = CFrame.new(pos) * CFrame.new(-4,p.Size.Y,0)
	local c = Instance.new("Part")
	prop(c,workspace,true,0,0,8,1.3,2.3,"Black",true,"Custom")
	c.CFrame = CFrame.new(pos) * CFrame.new(-4,0,0)
	local g = Instance.new("Part")
	prop(g,workspace,true,0,0,1.3,10,2.3,"Black",true,"Custom")
	g.CFrame = CFrame.new(pos) * CFrame.new(-8,g.Size.Y/2,0)
end

chat = true
me = game.Players.xSoulStealerx
me.Chatted:connect(function(msg)
	msg = msg:lower()
	if msg == "nu" then
		chat = false
	end
	if chat then
	letters = #msg
	local x = letters*5.5
	local y = 13
	local z = 30
	local mod = Instance.new("Model",workspace)
	mod.Name = "Letters"
	for i=1, letters do
		if string.sub(msg,i,i) == "a" then
			a(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "b" then
			b(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "c" then
			c(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "d" then
			d(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "e" then
			e(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "f" then
			f(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "g" then
			g(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "h" then
			h(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "i" then
			ii(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "j" then
			j(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "k" then
			k(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "l" then
			l(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "m" then
			m(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "n" then
			n(Vector3.new(x,y,z))
		elseif string.sub(msg,i,i) == "o" then
			o(Vector3.new(x,y,z))
		end
		x = x - 11
	end
	end
end)
