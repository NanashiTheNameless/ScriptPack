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

function givegui(gui, part)
	local sc = Instance.new("ScreenGui")
	sc.Name = "GiveItem"
	local Mainframe = Instance.new("Frame",sc)
	Mainframe.Size = UDim2.new(0, 300, 0, 120)
	Mainframe.Position = UDim2.new(1, -301, 0.5, -60)
	Mainframe.BackgroundColor3 = Color3.new(0.6, 0.4, 0.2)
	Mainframe.BorderColor3 = Color3.new(1,0.8,0.1)
	local Txt = Instance.new("TextLabel",Mainframe)
	Txt.Position = UDim2.new(0.5,0,0,4)
	Txt.FontSize = "Size14"
	Txt.Text = "Take item: "..part.Name.." ?"
	Txt.TextColor3 = Color3.new(0.2,0,0)
	Txt.TextYAlignment = "Top"
	local buttons = {{"Yes", true, {0.2, 1, 0.2}}, {"No", false, {0.9, 0.2, 0.2}}}
	local x = 0.02
	for i,v in pairs(buttons) do
		local Button = Instance.new("TextButton")
		Button.Text = v[1]
		Button.FontSize = "Size14"
		Button.TextColor3 = Color3.new(0,0,0)
		Button.BackgroundColor3 = Color3.new(v[3][1], v[3][2], v[3][3])
		Button.Position = UDim2.new(x,0,0.58,0)
		Button.Size = UDim2.new(0.46, 0, 0.4, 0)
		Button.Parent = Mainframe
		Button.MouseButton1Click:connect(function()
			if v[2] then
				part.Parent = gui.Parent.Inventory
			end
			sc:remove()
		end)
		x = x + 0.5
	end
	sc.Parent = gui
end

delitem = nil

function equipitem(part, char, rw, lw)
	local nam = part.Name
	local tool = Instance.new("Tool")
	tool.Name = nam
	part.Parent = tool
	part.Name = "Handle"
	tool.Parent = char
	tool.Changed:connect(function(p)
		if p == "Parent" then
			if tool.Parent ~= char and tool.Parent ~= game.Players:GetPlayerFromCharacter(char).Backpack then
				wait()
				part.Parent = workspace
				part.Name = nam
				tool:remove()
			end
		end
	end)
	tool.Equipped:connect(function(mouse)
		tool.Activated:connect(function()
			local rs = char.Torso["Right Shoulder"]
			local c = rs.C0
			for i = 0, 150, 150/6 do
				rs.C0 = c * CFrame.Angles(0,0,math.rad(i))
				wait()
			end
			for i = 150, 0, -150/3 do
				rs.C0 = c * CFrame.Angles(0,0,math.rad(i))
				wait()
			end
			part.Parent = workspace
			part.Name = nam
			part.CFrame = rs.Parent.CFrame * CFrame.new(0,0,-2)
			part.Velocity = rs.Parent.CFrame.lookVector * 140
			wait(0.2)
			tool.Parent = nil
		end)
	end)
end

function additem(plr, gui, x, y, obj)
	local ob = obj
	local fr = Instance.new("Frame")
	fr.Size = UDim2.new(0.14, 0, 0.14, 0)
	fr.Position = UDim2.new(x+0.02, 0, y+0.02, 0)
	fr.BackgroundColor3 = Color3.new(0.1, 0.07, 0.04)
	local but = Instance.new("TextButton",fr)
	but.Size = UDim2.new(0.9,0,0.9,0)
	but.Position = UDim2.new(0.05, 0, 0.05, 0)
	but.BackgroundColor3 = Color3.new(0.2, 0.3, 0.6)
	but.Text = ob.Name
	but.TextColor3 = Color3.new(0, 0, 0)
	but.TextYAlignment = "Top"
	but.MouseButton1Click:connect(function()
		equipitem(ob, plr.Character)
	end)
	fr.Parent = gui
end

delitem = function(plr, gui, obj, stuff)
	local x = 0
	local y = 0
	for i,v in pairs(gui:children()) do
		v:remove()
	end
	for i,v in pairs(stuff:children()) do
		if x < 0.8 then
			additem(plr, gui, x, y, v)
			y = y + 0.15
			if y >= 0.8 then
				y = 0
				x = x + 0.15
			end
		end
	end
	return x, y
end

function invgui(plr, gui, stuff)
	local sc = Instance.new("ScreenGui")
	sc.Name = "Inv"
	local inv = Instance.new("TextButton")
	inv.BackgroundColor3 = Color3.new(0.5, 0.35, 0.25)
	inv.FontSize = "Size14"
	inv.TextWrap = true
	inv.Text = "Inventory"
	inv.Font = "ArialBold"
	inv.Size = UDim2.new(0,70,0,50)
	inv.Position = UDim2.new(0.5,-35,1,-50)
	inv.TextYAlignment = "Top"
	inv.Parent = sc
	local invframe = Instance.new("Frame",sc)
	invframe.Visible = false
	invframe.Size = UDim2.new(0,400,0,320)
	invframe.Position = UDim2.new(0.5, -200, 0.5, -160)
	invframe.BackgroundColor3 = Color3.new(0.6, 0.4, 0.15)
	inv.MouseButton1Click:connect(function()
		if invframe.Visible then
			invframe.Visible = false
		else
			invframe.Visible = true
		end
	end)
	local x = 0
	local y = 0
	stuff.ChildAdded:connect(function(obj)
		if x < 0.8 then
			additem(plr, invframe, x, y, obj)
			y = y + 0.15
			if y >= 0.8 then
				y = 0
				x = x + 0.15
			end
		end
	end)
	stuff.ChildRemoved:connect(function(obj)
		x, y = delitem(plr, invframe, obj, stuff)
	end)
	sc.Parent = gui
end

function givestats(plr)
	if plr:findFirstChild("Inventory") ~= nil then plr.Inventory:remove() end
	local stuff = Instance.new("IntValue")
	stuff.Name = "Inventory"
	stuff.Value = 0
	stuff.Parent = plr
end

function backpack(plr)
	repeat wait() until plr.Character
	local char = plr.Character
	if char then
		local gui, torso, head = plr:findFirstChild("PlayerGui"), char:findFirstChild("Torso"), char:findFirstChild("Head")
		if gui and torso and head then
			for i,v in pairs(char:children()) do
				if v.Name == name then v:remove() end
			end
			for i,v in pairs(gui:children()) do
				if v.Name == "Inv" or v.Name == "GiveItem" then v:remove() end
			end
			invgui(plr, gui, plr.Inventory)
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
				prop(p, back, false, 0, 0, 2.25, 0.6, 0.2, "Brown", false, "Custom")
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
			for i = -130, -10, 15 do
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
				weld(w8, main, pock, 0, 0, 0, i, 0.4, -0.6)
				
				local ye = Instance.new("Part")
				prop(ye, back, false, 0, 0, 0.45, 0.2, 0.35, "Bright yellow", false, "Custom")
				local w9 = Instance.new("Weld")
				weld(w9, pock, ye, 0, 0, 0, 0, -0.15, 0)
				
				for x = -1, 1, 2 do
					local lul = Instance.new("Part")
					prop(lul, back, false, 0, 0, 0.5, 0.2, 1.08, "Reddish brown", false, "Custom")
					local w11 = Instance.new("Weld")
					weld(w11, torso, lul, 0, 0, 0, i/1.3, x, 0)
				end
				
				for x = -30, 30, 5 do
					local ho = Instance.new("Part")
					prop(ho, back, false, 0, 0, 0.5, 0.32, 0.2, "Reddish brown", false, "Custom")
					local w10 = Instance.new("Weld")
					w10.C0 = CFrame.new(i/1.3, 0.1, 0.65) * CFrame.Angles(math.rad(x),0,0)
					weld(w10, main, ho, 0, 0, 0, 0, 0, 1.85)
				end
			end
			
			local rb = Instance.new("Part")
			prop( rb, back, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
			local rh = Instance.new("Weld")
			weld( rh, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

			local lb = Instance.new("Part")
			prop( lb, back, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
			local lh = Instance.new("Weld")
			weld( lh, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

			local rw = Instance.new("Weld")
			weld(rw,rb,nil,0,0,0,0,0.5,0)

			local lw = Instance.new("Weld")
			weld(lw,lb,nil,0,0,0,0,0.5,0)

			back.Parent = char
			for i,v in pairs(char:children()) do
				if v:IsA("BasePart") then
					v.Touched:connect(function(hit)
						if hit:GetMass() <= 5 and hit.Parent.className ~= "Hat" and hit.CanCollide and hit.Parent.className ~= "Tool" and hit.Anchored == false and hit.Parent:findFirstChild("Humanoid") == nil and gui:findFirstChild("GiveItem") == nil then
							givegui(gui, hit)
						end
					end)
				end
			end
		end
	end
end

for i,v in pairs(game.Players:GetPlayers()) do
	givestats(v)
	coroutine.resume(coroutine.create(function()
		backpack(v)
	end))
	v.CharacterAdded:connect(function() backpack(v) end) 
end

game.Players.PlayerAdded:connect(function(p)
	givestats(p)
	coroutine.resume(coroutine.create(function()
		backpack(p)
	end))
	wait(1)
	p.CharacterAdded:connect(function() backpack(p) end) 
end)
