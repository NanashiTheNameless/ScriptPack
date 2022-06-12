--By Chromium
--I made this script to troll in games :P

l = game.Lighting
l.TimeOfDay = 1
l.FogEnd = 100
game.Lighting.Ambient = Color3.new(0,0,0)
l.Brightness = 0.1

s=Instance.new'Sound';
s.Parent=workspace;
s.SoundId='rbxassetid://376019028';
s.Pitch=1;
s.Volume=1;
s.Looped=true;
s:play();

wait(0.1)


s=Instance.new'Sound';
s.Parent=workspace;
s.SoundId='rbxassetid://376019028';
s.Pitch=1;
s.Volume=1;
s.Looped=true;
s:play();

wait(0.1)

s=Instance.new'Sound';
s.Parent=workspace;
s.SoundId='rbxassetid://163474903';
s.Pitch=1;
s.Volume=1;
s.Looped=true;
s:play();


wait(0.1)
local colors = {
	BrickColor.new("White"),
	BrickColor.new("White"),
	BrickColor.new("Really black"),
	BrickColor.new("Really black"),
}
for i = 1, 1200 do
	local p = Instance.new("Part",workspace)
	p.Anchored = true
	p.Size = Vector3.new( math.random(10, 160), math.random(4,60), math.random(10, 160) )
	p.CFrame = CFrame.new( math.random(-1700, 1700), math.random(710, 2500), math.random(-1700, 1700) )
	p.CanCollide = false
	p.TopSurface = 0
	p.BottomSurface = 0
	p.BrickColor = colors[math.random(1,#colors)]
	
	if i%20 == 0 then
	
		local currentpos = Vector3.new( math.random(-1700, 1700), math.random(710, 2500), math.random(-1700, 1700) )
		local frompos = currentpos
		local targetpos = Vector3.new( math.random(-1700, 1700), math.random(710, 2500), math.random(-1700, 1700) )
		
		local rotation = 0
		
		local speed = math.random()*1.5+0.1
		local rotspeed = ( math.random() - 0.5 ) * 2 * 2.5
		local factor = 0
		
		p.CFrame = CFrame.new(currentpos)
		
		local dist = (frompos - targetpos).magnitude
		
		local loop = function()
			rotation = rotation + rotspeed
			if rotation > 180 then rotation = rotation - 360 end
			if rotation < -180 then rotation = rotation + 360 end
			
			factor = factor + speed / dist
			if factor > 1 then
				factor = 0
				targetpos = Vector3.new( math.random(-1700, 1700), math.random(710, 2500), math.random(-1700, 1700) )
				frompos = currentpos
				dist = (frompos - targetpos).magnitude
				rotspeed = ( math.random() - 0.5 ) * 2 * 3
			end
			
			currentpos = frompos:Lerp(targetpos, factor)
			p.CFrame = CFrame.new(currentpos) * CFrame.Angles( 0, math.rad(rotation), 0 )
		end
		game:service("RunService").Stepped:connect(loop)
		
	end
end
wait(0.1)

script.Name = "Lol Derp"
    local bright = game.Lighting.Brightness
     
    function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
    part.Parent = parent
    part.formFactor = form
    part.CanCollide = collide
    part.Transparency = tran
    part.Material = 'Neon'
    part.Reflectance = ref
    part.Size = Vector3.new(x,y,z)
    part.BrickColor = BrickColor.new(color)
    part.TopSurface = 0
    part.BottomSurface = 0
    part.Anchored = anchor
    part.Locked = true
    part:BreakJoints()
    end
     
     
    function thunder(pos)
            local last = CFrame.new(pos)
            local scale = 1
            local lights = {}
            repeat
                    local si = math.random(15,45)
                    local p = Instance.new("Part")
                    prop(p,workspace,true,0,0,5,si,5,"Institutional white",true,"Custom")
                    p.CFrame = last * CFrame.new(0,-scale/2,0)
                    p.CFrame = CFrame.new(p.Position) * CFrame.Angles(math.random(-120,120)/100,math.random(-30,30)/100,math.random(-120,120)/100) * CFrame.new(0,-si/2,0)
                    last = p.CFrame
                    scale = si
                    table.insert(lights,p)
            until last.y < 14
            local ex = Instance.new("Explosion",workspace)
            ex.BlastRadius = 22
            ex.BlastPressure = 300000
            ex.Position = last * CFrame.new(0,-scale/2,0).p
            local pew = Instance.new("Sound",workspace)
            pew.SoundId = "rbxasset://sounds\HalloweenLightning.wav"
            pew.Volume = math.random(70,110)/100
            pew.Pitch = math.random(85,120)/100
            coroutine.resume(coroutine.create(function()
                    for i=1,math.random(5,25) do
                            if game.Lighting.Brightness == bright then
                                    game.Lighting.Brightness = 9999
                            else
                                    game.Lighting.Brightness = bright
                            end
                            wait()
                    end
                    game.Lighting.Brightness = bright
            end))
            wait(0.05)
            pew:play()
            wait(math.random(10,80)/100)
            ex:remove()
            for _,v in pairs(lights) do
                    coroutine.resume(coroutine.create(function()
                            for i=0,1,0.25 do
                                    wait()
                                    v.Transparency = i
                            end
                            v:remove()
                    end))
            end
    end
     
    while true do
            wait(math.random(1,300)/100)
            coroutine.resume(coroutine.create(function()
                    thunder(Vector3.new(math.random(-250,250),math.random(700,1000),math.random(-250,250)))
            end))
    end

while true do 
wait(0.01) 
c = Instance.new("Part") 
c.Position = Vector3.new(math.random(-100,100),math.random(0,50),math.random(-100,100)) 
c.Transparency = 0.5 
c.Reflectance = 0 
c.Size = Vector3.new(0.5, 0.5, 0.5) 
c.BrickColor = BrickColor.new(23) 
c.CanCollide = true 
c.Locked = true 
c.Anchored = false 
c.Shape = 0 
c.Parent = game.Workspace 
end
	
