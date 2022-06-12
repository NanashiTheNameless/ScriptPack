name = "Back"

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

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function backpack(plr)
	local char = plr.Character
	if char then
		local gui, torso, head = plr:findFirstChild("PlayerGui"), char:findFirstChild("Torso"), char:findFirstChild("Head")
		if gui and torso and head then
			for i,v in pairs(char:children()) do
				if v.Name == name then v:remove() end
			end
			local back = Instance.new("Model")
			back.Name = name
			local floo = Instance.new("Part")
			prop(floo, back, false, 0, 0, 2.05, 0.2, 1.1, "Reddish brown", false, "Custom")
			local w1 = Instance.new("Weld")
			weld(w1, torso, floo, 0, 0, 0, 0, 1.1, -1.05)
			local main = Instance.new("Part")
			prop(main, back, false, 0, 0, 2.05, 2.28, 0.2, "Reddish brown", false, "Custom")
			local w6 = Instance.new("Weld")
			weld(w6, torso, main, 0, 0, 0, 0, 0.07, -0.55)
			for i=-50,30,20 do
				local p = Instance.new("Part")
				prop(p, back, false, 0, 0, 2.05, 0.6, 0.2, "Brown", false, "Custom")
				local w2 = Instance.new("Weld")
				w2.C0 = CFrame.new(0,-0.1,0.5) * CFrame.Angles(math.rad(i),0,0)
				weld(w2, torso, p, 0, 0, 0, 0, 0, -1.3)
				for x = -1.025, 1.025, 2.05 do
					local p2 = Instance.new("Part")
					prop(p2, back, false, 0, 0, 0.2, 0.8, 0.8, "Brown", false, "Custom")
					local w3 = Instance.new("Weld")
					weld(w3, p, p2, 0, 0, 0, x, 0, 0.4)
				end
			end
			for i = -1.025, 1.025, 2.05 do
				local side = Instance.new("Part")
				prop(side, back, false, 0, 0, 0.2, 2.2, 0.9, "Brown", false, "Custom")
				local w4 = Instance.new("Weld")
				weld(w4, torso, side, 0, 0, 0, i, 0, -0.95)
			end
			local last = nil
			for i = -110, -10, 15 do
				local bla = Instance.new("Part")
				prop(bla, back, false, 0, 0, 2.05, 0.4, 0.2, "Reddish brown", false, "Custom")
				local w5 = Instance.new("Weld")
				w5.C0 = CFrame.new(0,0.33,0.48) * CFrame.Angles(math.rad(i),0,0)
				weld(w5, main, bla, 0, 0, 0, 0, 0, -1)
				last = bla
			end
			local yel = Instance.new("Part")
			prop(yel, back, false, 0, 0, 0.5, 0.3, 0.2, "Bright yellow", false, "Custom")
			local w7 = Instance.new("Weld")
			weld(w7, last, yel, 0, 0, 0, 0, 0, -0.05)
			for i = -1.1, 1.1, 2.2 do
				local pock = Instance.new("Part")
				prop(pock, back, false, 0, 0, 0.4, 0.6, 0.8, "Reddish brown", false, "Custom")
				local w8 = Instance.new("Weld")
				weld(w8, main, pock, 0, 0, 0, i, 0, -0.6)
				
				local ye = Instance.new("Part")
				prop(ye, back, false, 0, 0, 0.45, 0.2, 0.35, "Bright yellow", false, "Custom")
				local w9 = Instance.new("Weld")
				weld(w9, pock, ye, 0, 0, 0, 0, -0.15, 0)
				
				for x = -1, 1, 2 do
					local lul = Instance.new("Part")
					prop(lul, back, false, 0, 0, 0.5, 0.2, 1.2, "Reddish brown", false, "Custom")
					local w11 = Instance.new("Weld")
					weld(w11, torso, lul, 0, 0, 0, i/1.3, x, 0)
				end
				
				for x = -30, 30, 6 do
					local ho = Instance.new("Part")
					prop(ho, back, false, 0, 0, 0.5, 0.4, 0.2, "Reddish brown", false, "Custom")
					local w10 = Instance.new("Weld")
					w10.C0 = CFrame.new(i/1.3, 0.1, 0.65) * CFrame.Angles(math.rad(x),0,0)
					weld(w10, main, ho, 0, 0, 0, 0, 0, 1.85)
				end
			end
			back.Parent = char
		end
	end
end

for i,v in pairs(game.Players:GetPlayers()) do
	backpack(v)
end


