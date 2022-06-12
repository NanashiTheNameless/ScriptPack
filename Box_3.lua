Services = setmetatable({},{__index=function(s,r) return game:GetService(r) end})
Player = Services.Players.LocalPlayer
Char = Player.Character
Mouse = Player:GetMouse()
size = 5
bsize = 2
CLICK = false
parts = {}
keys = {
	q = {false,function(x,z)
			for i,v in pairs(parts) do
				v[1].CFrame = clerp(v[1].CFrame,
					CFrame.new(Char.Torso.CFrame.p)*CFrame.new(0,-2,0)
					*CFrame.Angles(math.cos(i*(360/#parts))+x,math.rad(i*(360/#parts))/2+x,math.abs(#parts))
					*CFrame.new(math.abs(#parts)/2,0,0)
					*CFrame.Angles(math.sin(x),0,math.sin(x))
				,.1)
			end
	end},
	
	BREAK = {false}
}
FOLLOW = false
function clerp(p1,p2,p0)
	return p1:lerp(p2,p0)
end
function GPOS()
	return CFrame.new(Char.Torso.CFrame.p)
end
function akeys()
	for i,X in pairs(keys) do
		if X[1] == true then return true end
	end
	return false
end
function fix()
	TPOS = GPOS()
	for i,v in pairs(parts) do
		if akeys() == true then break end
		coroutine.resume(coroutine.create(function()
			for i = 1,75 do
				if akeys() then break end
				game:service'RunService'.Heartbeat:wait()
				v[1].CFrame = clerp(v[1].CFrame,CFrame.new(v[2]*bsize,v[3]*bsize,v[4]*bsize) * TPOS,.25)
			end
			if akeys() == false then 
				v[1].CFrame = CFrame.new(v[2]*bsize,v[3]*bsize,v[4]*bsize) * TPOS
			end
		end))
		v[1].Size = Vector3.new(bsize,bsize,bsize)
	end
end
spawn(function()
	TPOS = GPOS()
	for x = 1,size do
		for y = 1,size do
			for z = 1,size do
				local P = Instance.new('Part',script)
				P.Size = Vector3.new(bsize,bsize,bsize)
				P.Anchored=true
				P.Material='WoodPlanks'
				P.BrickColor = BrickColor.new('Brown')
				P.CFrame = CFrame.new(x*bsize,y*bsize,z*bsize) * TPOS
				P.Transparency=1
				P.CanCollide=false
				P.Name='asdlkjljrwtriug4w9efj'
				game:service'RunService'.Heartbeat:wait()
				table.insert(parts,{P,x,y,z})
				spawn(function()
					wait(math.random(5))
					for i = 1,0,-.1 do
						wait()
						P.Transparency=i
					end
				end)
			end
		end
	end
end)
x,z = 0.05,0.1
Mouse.KeyDown:connect(function(k)
	if keys[k:lower()] ~= nil then
		keys[k:lower()][1]=true
		repeat
			z,x = z + .1, x + 0.05
			Services.RunService.Heartbeat:wait() 
			spawn(function() keys[k:lower()][2](x,z) end)
		until keys[k:lower()][1]==false
		fix();
	end
end)
Mouse.KeyUp:connect(function(k)
	if keys[k:lower()] then
		keys[k:lower()][1]=false
	end
end)
Player.Chatted:connect(function(c)
	if c:sub(1,3) == '/e ' then c = c:sub(4) end
	if c:sub(1,2) == '\\f' then 
		if FOLLOW == true then 
			FOLLOW = false
			keys.BREAK[1] = false
			coroutine.yield()fix()
		else 
			FOLLOW = true
			for i,v in pairs(parts) do
				coroutine.resume(coroutine.create(function()
					for i = bsize,bsize/4,-.1 do
						v[1].Size = Vector3.new(i,i,i)
					end
				end))
			end
		end
	end
end)

coroutine.resume(coroutine.create(function()
while true do
	game:service'RunService'.Heartbeat:wait()
		if FOLLOW then
			keys.BREAK[1] = true
			for i,v in pairs(parts) do
				v[1].CFrame = clerp(v[1].CFrame,Char.Head.CFrame * CFrame.new(0,bsize/4+1.75,0),.1)
			end
			for i,v in pairs(keys) do v[1] = false end
		end
	end
end))
ks = ""
for i,v in pairs(keys) do
	if #i < 2 then
		ks = ks..i..", "
	end
end
local cmds = string.format([[
--commands--
rotation keys (hold):
%s
you can combine multiple keys at a time
type \f to minimize the box
]],ks)
print(cmds)