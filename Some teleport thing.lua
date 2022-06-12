plr = game.Players.LocalPlayer
mouse = plr:GetMouse()
chr = plr.Character or plr.CharacterAdded:wait()
torso = chr.Torso
hrp = chr.HumanoidRootPart
myhumanoid = chr.Humanoid
part = Instance.new('Part')
part.CanCollide = false
part.Anchored = true
part.BrickColor = BrickColor.new('Magenta')
part.Material = Enum.Material.Neon
part.Size = Vector3.new(1,1,1)
part.BottomSurface = Enum.SurfaceType.Smooth
part.TopSurface = Enum.SurfaceType.Smooth
renderstepped = game:GetService('RunService').RenderStepped
userinput = game:GetService('UserInputService')
mainmodel = Instance.new('Model',chr)
mainchord = 5
mainpart = part:Clone()
mainpart.Parent = chr
mainmodel.PrimaryPart = mainpart
mainpart.Transparency = 1

for i = 1,4 do
	local clone = part:Clone()
	clone.Parent = mainmodel
	clone.CFrame = CFrame.Angles(0,math.rad(i*90),0)*CFrame.new(mainchord,0,0)
end
children = mainmodel:GetChildren()
my = 0
function rot()
	for i,v in pairs(children) do
--		v.Size = Vector3.new(mainchord/5,mainchord/5,mainchord/5)
		v.CFrame = v.CFrame*CFrame.Angles(math.rad(1),math.rad(1),math.rad(2))
	end
end
function rotA()
	while renderstepped:wait() do
		spawn(rot)
		my = my + 1.5
		if my > 360 then
			my = 0
		end
		mainmodel:SetPrimaryPartCFrame(CFrame.new(torso.Position)*CFrame.Angles(math.rad(0),math.rad(my),math.rad(0)))
	end
end
spawn(rotA)

function lerp(dist,inc)
	for i = 0,10 do
		renderstepped:wait()
		for x,v in pairs(children) do
			--lookvector
			--( centerPoint.Y + distance * Math.Sin( angle ) )
			--diff rot is 90
			v.Size = v.Size + Vector3.new(.1/(dist/math.abs(dist)),.1/(dist/math.abs(dist)),.1/(dist/math.abs(dist)))
			v.Transparency = v.Transparency - .1/(dist/math.abs(dist))
			v.CFrame = CFrame.new(v.Position)*CFrame.Angles(0,math.rad(90*x+my),0)*CFrame.new(dist/10,0,0)
		end
	end
end

mouse.Button1Down:connect(function()
	local rotation = my
	if mouse.Target ~= nil then
		local tp = mouse.Hit
		lerp(-5,rotation)
		chr:SetPrimaryPartCFrame(CFrame.new(tp.p)*CFrame.new(0,5,0))
		lerp(5,rotation)
	end
end)

wait(2)

--for i,v in pairs(children) do
--	print(v.Rotation)
--end