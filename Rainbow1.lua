
rs = game:GetService'RunService'
plrs = game:GetService'Players'
lp = plrs.LocalPlayer
c = lp.Character
root = lp.Character.HumanoidRootPart
human = c.Humanoid
FPS = 0
inf = 0
opos1 = Vector3.new()
opos2 = Vector3.new()
opos3 = Vector3.new()
waves = Instance.new("Model", c)
res = Instance.new("Model", c)
local function a()
local t=tick();
local l=t%1*3;
local t=.5*math.pi*(l%1);
if l<1 then
return Color3.new(1,1-math.cos(t),1-math.sin(t));
elseif l<2 then
return Color3.new(1-math.sin(t),1,1-math.cos(t));
else
return Color3.new(1-math.cos(t),1-math.sin(t),1);
end;
end;                       
speedParts = function()
	for i = 1, 4 do
		local pos = Vector3.new(math.sin(math.rad(inf + 360 * i)) * 2, math.sin(math.rad(inf + 260 * i) + math.pi / 2) * 2, -c.HumanoidRootPart.Velocity / 5) * (math.sin(tick()) + 2)
		local CFramepos = root.CFrame:toWorldSpace(CFrame.new(pos)).p
		local opos
		if i == 1 then
			opos = opos1
		elseif i == 2 then
			opos = opos2
		else
			opos = opos3
		end
		if human.MoveDirection ~= Vector3.new(0, 0, 0)  then
			local e
			if #res:children() <= 3 then
				e = Instance.new("Part")
			else
				e = res:FindFirstChild("Trail")
			end
			e.Parent = waves
			e.Anchored = true
			e.CanCollide = false
			e.Transparency = 0
			e.Material = "Neon"
			e.Name = "Trail"
			e.Color = a();
			e.Size = Vector3.new(.2, (CFramepos - opos).magnitude, .2)
			e.CFrame = CFrame.new((CFramepos + opos) / 2, opos) * CFrame.Angles(math.pi / 2, 0, 0)
		end
		if i == 1 then
			opos1 = CFramepos
		elseif i == 2 then
			opos2 = CFramepos
		else
			opos3 = CFramepos
		end
	end
end
                                                
rs.RenderStepped:connect(function()
	FPS = 1 / rs.RenderStepped:wait()
	for i, v in pairs (waves:children()) do
		v.Transparency = v.Transparency + .05 / (FPS / 60)
		if v.Transparency >= .98 then
			v.Transparency = 1
			v.Parent = res
		end
	end
	inf = inf + (8 + root.Velocity.magnitude / 15) / (FPS / 60)
	speedParts()
end)