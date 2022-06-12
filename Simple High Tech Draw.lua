local host = game:service'Players'.LocalPlayer;
local cache = {};

--// Setup

local ArtificialHB = Instance.new('BindableEvent')
ArtificialHB.Name = 'Heartbeat'

delay_per_second,tf,allowframeloss,allowframeloss,lastframe = 130,0,false,false,tick()
tossremainder = false
frame = 1 / delay_per_second

game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
        if allowframeloss then
            ArtificialHB:Fire()
            lastframe = tick()
        else
            for i = 1, math.floor(tf / frame) do
                ArtificialHB:Fire()
            end
            lastframe = tick()
        end
        if tossremainder then
            tf = 0
        else
            tf = tf - frame * math.floor(tf / frame)
        end
    end
end)

--// Cache
cache['mouse'] = host:GetMouse();
cache['hb'] = ArtificialHB;
cache['assets'] = Instance.new('Folder', host.Character);
cache['storage'] = Instance.new('Folder', cache['assets']);
cache['preview'] = Instance.new('Folder', cache['assets']);
cache['points'] = {};
cache['segments'] = {};
cache['settings'] = {
	Wrap = {Value = false, Description = 'Wrap to the beginning from the end when generating plot segments'};
	Width = {Value = .2, Description = 'The width of the segment as a whole'};
	LerpSpeed = {Value = .05, Description = 'The speed of the 3D cursor {0 to 1}'};
	Preview = {Value = true, Description = 'While plotting a segment, do you want there to be a preview of how it will turn out?'};
};

function cache:swait(num)
    if num == 0 or num == nil then
        ArtificialHB.Event:wait()
    else
        for i = 0, num+2 do
            ArtificialHB.Event:wait()
        end
    end
end

function cache:ni(name,prnt)
	return Instance.new(tostring(name),prnt)
end

function cache:new(type, prnt, others)
	if not prnt then prnt = workspace end
	local new = cache:ni(type)
	if new:IsA'BasePart' then
		new.Anchored = true
		new.Size = Vector3.new(1,1,1)
		new.Color = Color3.new(1,1,1)
		new.CanCollide = false
		new.Material = 'SmoothPlastic'
		new.TopSurface = 10
		new.BottomSurface = 10
		new.LeftSurface = 10
		new.RightSurface = 10
		new.FrontSurface = 10
		new.BackSurface = 10
	end
	for i,v in next, others do
		local suc,err = pcall(function()
			new[i] = v
		end)
		if not suc then
			print(err)
		end
	end
	new.Parent = prnt
	return new
end

function cache:cylinder(prnt, cf)
	return cache:new('Part', prnt,{
		Shape = 'Cylinder',
		Size = Vector3.new(.4,.4,.4),
		CFrame = cf,
	});
end

function cache:part(prnt, cf)
	return cache:new('Part', prnt,{
		Size = Vector3.new(.4,.4,.4),
		CFrame = cf,
	});
end

function cache:plot(cf)
	local plot = cache:cylinder(cache['storage'], CFrame.new(cf.p)*CFrame.Angles(0,0,math.pi/2))
	cache.points[#cache.points+1] = plot
end

function cache:generate(rate)
	local stuff = cache.points
	local last = stuff[1]
	if cache.settings.Wrap.Value == true then
		stuff[#stuff+1]=stuff[1]
	end
	for i, plot in next, stuff do
		cache:swait(rate or nil);
		if i >= 2 then
			local range = (last.CFrame.p - plot.CFrame.p)
			local distance = range.magnitude
			local base = cache:part(cache.storage, CFrame.new(last.CFrame.p, plot.CFrame.p))
				base.Size = Vector3.new(cache.settings.Width.Value,cache.settings.Width.Value,distance);
				base.CFrame = CFrame.new(last.CFrame.p,plot.CFrame.p) * CFrame.new(0,0,-distance/2);
			local edge = cache:cylinder(cache['storage'], CFrame.new(last.CFrame.p, plot.CFrame.p))
				edge.Size = Vector3.new(cache.settings.Width.Value,cache.settings.Width.Value,cache.settings.Width.Value)
				edge.CFrame = CFrame.new(last.CFrame.p,plot.CFrame.p) * CFrame.new(0,0,-distance) * CFrame.Angles(0,0,math.pi/2);
			plot.Transparency = 1
			last = plot
		else
			local edge = cache:cylinder(cache['storage'], CFrame.new(last.CFrame.p, plot.CFrame.p))
				edge.Size = Vector3.new(cache.settings.Width.Value,cache.settings.Width.Value,cache.settings.Width.Value)
				edge.CFrame = plot.CFrame * CFrame.new(0,0,distance);
			plot.Transparency = 1
		end
	end
	for i, plot in next, stuff do
		pcall(game.Destroy, plot)
	end
	points = {};
end

local md, old = false, CFrame.new(0,9e9,0)
local cur = cache.mouse.Hit

function cache:update()
	cache['follow'] = cache:cylinder(cache['assets'], CFrame.new(cache.mouse.Hit.p)*CFrame.Angles(0,0,math.pi/2))
	while true do
		cache['follow'].CFrame = cache['follow'].CFrame:lerp(CFrame.new(cache.mouse.Hit.p)*CFrame.Angles(0,0,math.pi/2), .1)
		for i, plot in next, cache.points do
			if plot.Parent == nil or plot == nil then
				table.remove(cache.points, index)
			end
		end
		cache:swait()
	end
end

cache.mouse.Button1Down:connect(function()
	md = true
	cache['follow'].Transparency = .8
	while md do
		cur = cache.follow.CFrame
		local distance = (old.p - cur.p).magnitude
		if distance > cache.settings.Width.Value then
			cache:plot(cur)
			old = cur
		end
		cache:swait()
	end
end)

cache.mouse.Button1Up:connect(function()
	cache['follow'].Transparency = 0
	md = false
	cache:generate()
end)

cache.mouse.KeyDown:connect(function(key)
	if key == 'c' then
		local new = Instance.new('Folder',workspace.Terrain)
		game.Debris:AddItem(new, 20)
		for i,v in next, cache.storage:children() do
			v.Parent=new
		end
		cache.storage:ClearAllChildren()
		for i,v in next, new:children() do
			if v:IsA'BasePart' then
				spawn(function()
					delay((math.random()/(math.random()+.2)) / 10, function()
						for i = 0,1.025,.025 do
							v.Transparency=i
							cache:swait()
						end
					end)
				end)
			end
		end
	end
end)

spawn(cache.update)