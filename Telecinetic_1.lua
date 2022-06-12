name = "xSoulStealerx"
me = game.Players[name]

if script.Parent.className ~= "HopperBin" then
hoppa = Instance.new("HopperBin")
hoppa.Parent = me.Backpack
hoppa.Name = "Telekinesis"
script.Parent = hoppa
end
bps = {}
fair = {}
hold = false
function sel(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function()
		local targ = mouse.Target
		if targ ~= nil then
			hold = true
			if targ:GetMass() >= 400 then return end
			local bp = Instance.new("BodyPosition")
			bp.Parent = targ
			bp.maxForce = Vector3.new(6000 * targ:GetMass(),6000 * targ:GetMass(),6000 * targ:GetMass())
			bp.position = me.Character.Head.Position + Vector3.new(0,6,0)
			table.insert(bps,bp)
			targ.Anchored = false
			while hold == true do
				wait()
				bp.position = me.Character.Head.Position + Vector3.new(0,6,0)
			end
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
		wait(0.03)
		for i=1, #bps do
			bps[i].position = me.Character.Head.Position + Vector3.new(math.random(-20,20),math.random(5,20),math.random(-20,20))
			local hu = bps[i].Parent.Parent:findFirstChild("Humanoid")
			if hu ~= nil then
				hu.Sit = true
			end
			bps[i].Parent.RotVelocity = Vector3.new(math.random(-30,30),math.random(-30,30),math.random(-30,30))
			wait(0.1)
			bps[i]:remove()
			table.remove(bps, i)
		end
	end)
end

function desel()
hold = false
for i=1, #bps do
	bps[i]:remove()
	table.remove(bps, i)
end
end

script.Parent.Selected:connect(sel)


