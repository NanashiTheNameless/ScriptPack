forward = "w"
back = "s"
left = "a"
right = "d"
up = "r"
down = "f"

fo = false
ba = false
le = false
ri = false
u = false
d = false

player = game.Players.xSoulStealerx
character = player.Character
torso = character.Torso

hopper = Instance.new("HopperBin")
hopper.Parent = player.Backpack
hopper.Name = "Fly"
script.Parent = hopper

stuff = false

a = Instance.new("Part")
a.Parent = game.Lighting
a.Shape = "Ball"
a.Size = Vector3.new(3,3,3)
a.TopSurface = 0
a.BottomSurface = 0
a.Anchored = false
a.CanCollide = false
a.BrickColor = BrickColor.new("Bright blue")
a.Reflectance = 0.2
a.Transparency = 1
bp = Instance.new("BodyPosition")
bp.Parent = nil
bp.maxForce = Vector3.new(1000000000,1000000000,1000000000)
bp.position = torso.Position
av = Instance.new("BodyAngularVelocity")
av.Parent = nil
av.maxTorque = Vector3.new(1000000000,1000000000,1000000000)
av.angularvelocity = Vector3.new(0,0,0)
weld = Instance.new("Weld")
weld.Parent = a
weld.Part0 = weld.Parent
weld.Part1 = torso
weld.C1 = CFrame.new(0,0,0)

function selected(mouse, key)
	stuff = true
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == forward) then
			fo = true
			while fo == true do
				bp.position = bp.position + Vector3.new(0,0,-1.5)
				av.angularvelocity = Vector3.new(-5,0,0)
				wait()
			end
		elseif (key == back) then
			ba = true
			while ba == true do
				bp.position = bp.position + Vector3.new(0,0,1.5)
				av.angularvelocity = Vector3.new(5,0,0)
				wait()
			end
		elseif (key == left) then
			le = true
			while le == true do
				bp.position = bp.position + Vector3.new(-1.5,0,0)
				av.angularvelocity = Vector3.new(0,0,5)
				wait()
			end
		elseif (key == right) then
			ri = true
			while ri == true do
				bp.position = bp.position + Vector3.new(1.5,0,0)
				av.angularvelocity = Vector3.new(0,0,-5)
				wait()
			end
		elseif (key == down) then
			d = true
			while d == true do
				bp.position = bp.position + Vector3.new(0,-1.5,0)
				av.angularvelocity = Vector3.new(0,5,0)
				wait()
			end
		elseif (key == up) then
			u = true
			while u == true do
				bp.position = bp.position + Vector3.new(0,1.5,0)
				av.angularvelocity = Vector3.new(0,-5,0)
				wait()
			end
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if (key == forward) then
			fo = false
			av.angularvelocity = Vector3.new(0,0,0)
		elseif (key == back) then
			ba = false
			av.angularvelocity = Vector3.new(0,0,0)
		elseif (key == left) then
			le = false
			av.angularvelocity = Vector3.new(0,0,0)
		elseif (key == right) then
			ri = false
			av.angularvelocity = Vector3.new(0,0,0)
		elseif (key == up) then
			u = false
			av.angularvelocity = Vector3.new(0,0,0)
		elseif (key == down) then
			d = false
			av.angularvelocity = Vector3.new(0,0,0)
		end
	end)
	a.Parent = character
	bp.Parent = torso
	bp.position = a.Position + Vector3.new(0,4,0)
	av.Parent = torso
	character.Humanoid.PlatformStand = true
end

function deselect()
fo = false
ba = false
le = false
ri = false
u = false
d = false
a.Parent = game.Lighting
character.Humanoid.PlatformStand = false
bp.Parent = nil
av.Parent = nil
stuff = false
end

script.Parent.Selected:connect(selected)
script.Parent.Deselected:connect(deselect)

