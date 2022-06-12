activatedist = 3

local lop = game:GetService("InsertService")
local hi = lop:LoadAsset(42613502)
local sw  = hi:GetChildren()[1]

rc = {"Earth green", "Brown", "Dark green", "Camo"}
types = 1

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

function generate()
	local siz = math.random(180,300)
	local pos = Vector3.new(math.random(-2600,2600),math.random(200,3000),math.random(-2600,2600))
	local mod = Instance.new("Model",workspace)
	mod.Name = "Terrain"
	local b = Instance.new("Part")
	prop(b,mod,true,0,0,siz,3,siz,rc[math.random(1,#rc)],true,"Custom")
	b.CFrame = CFrame.new(pos)
	local b2 = Instance.new("Part")
	prop(b2,mod,true,0,0,siz,3,siz,rc[math.random(1,#rc)],true,"Custom")
	b2.CFrame = CFrame.new(pos) * CFrame.new(0,80,0)
	local hi = math.random(1,types)
	if hi == 1 then
		for o=7,80,siz/14 do
			for i=1,360,11 do
				local p = Instance.new("Part",mod)
				prop(p,mod,true,0,0,siz/7,siz/7,siz/7,rc[math.random(1,#rc)],true,"Custom")
				p.CFrame = CFrame.new(pos) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,o,-siz/2.1) * CFrame.Angles(math.random(-32,32),math.random(-32,32),math.random(-32,32))
			end
		end
	end
	return pos, mod
end

function gui(p1,p2)
	local sc = Instance.new("ScreenGui",p1.PlayerGui)
	sc.Name = "Fight"
	local fr = Instance.new("Frame",sc)
	fr.Position = UDim2.new(0.35,0,0.4,0)
	fr.Size = UDim2.new(0.3,0,0.12,0)
	fr.BackgroundColor3 = Color3.new(0.4,0.0,0.05)
	local fi = Instance.new("TextButton",fr)
	fi.Size = UDim2.new(0.8,0,0.25,0)
	fi.Position = UDim2.new(0.1,0,0.1,0)
	fi.Text = "Fight "..p2.Name
	fi.MouseButton1Click:connect(function()
		sc:remove()
		local lo = p2.PlayerGui:findFirstChild("Fight")
		if lo ~= nil then lo:remove() end
		local ta = {p1,p2}
		local na = {sw:clone(),sw:clone()}
		local orig1, orig2 = ta[1].Character.Torso.Position, ta[2].Character.Torso.Position
		local win = nil
		local los = nil
		local able = true
		local map, modul = generate()
		for i,v in pairs(ta) do
			v.Character.Humanoid.Died:connect(function()
				if win == nil and los == nil and able then
					if i == 1 then
						los = v
						win = ta[2]
					elseif i == 2 then
						los = v
						win = ta[1]
					end
					local heh = Instance.new("TextLabel",win.PlayerGui.Fade)
					heh.Size = UDim2.new(1,1,1,1)
					heh.Position = UDim2.new(0,0,0,-1)
					heh.BackgroundColor3 = Color3.new(0,0,0)
					heh.TextColor3 = Color3.new(1,1,1)
					heh.TextTransparency = 1
					heh.BackgroundTransparency = 1
					heh.Text = "You pwned "..los.Name.."!!!!!!!!!!!!!!"
					local hah = Instance.new("TextLabel",los.PlayerGui.Fade)
					hah.Size = UDim2.new(1,1,1,1)
					hah.Position = UDim2.new(0,0,0,-1)
					hah.BackgroundColor3 = Color3.new(0,0,0)
					hah.TextColor3 = Color3.new(1,1,1)
					hah.TextTransparency = 1
					hah.BackgroundTransparency = 1
					hah.Text = "You lost!"
					for _,v in pairs(na) do
						v:remove()
					end
					able = false
					coroutine.resume(coroutine.create(function()
						for i=1.2, -0.2, -0.02 do
							wait()
							heh.TextTransparency = i
							heh.BackgroundTransparency = i
							hah.TextTransparency = i
							hah.BackgroundTransparency = i
						end
						if i == 1 then
							ta[2].Character:MoveTo(orig2)
						else
							ta[1].Character:MoveTo(orig1)
						end
						modul:remove()
						wait(1.5)
						for i=-0.2, 1.2, 0.02 do
							wait()
							heh.TextTransparency = i
							heh.BackgroundTransparency = i
						end
						pcall(function()
							los.PlayerGui.Fade:remove()
							win.PlayerGui.Fade:remove()
						end)
					end))
				end
			end)
		end
		for i,v in pairs(ta) do
			v.Character.Humanoid.WalkSpeed = 0
			local s = Instance.new("ScreenGui",v.PlayerGui)
			s.Name = "Fade"
			local heh = Instance.new("TextLabel",s)
			heh.Size = UDim2.new(1,1,1,1)
			heh.Position = UDim2.new(0,0,0,-1)
			heh.BackgroundColor3 = Color3.new(0,0,0)
			heh.TextColor3 = Color3.new(1,1,1)
			heh.TextTransparency = 1
			heh.BackgroundTransparency = 1
			heh.Text = "The battle is about to begin....."
			coroutine.resume(coroutine.create(function()
				for i=1.2, -0.2, -0.02 do
					wait()
					heh.TextTransparency = i
					heh.BackgroundTransparency = i
				end
				v.Character:MoveTo(map + Vector3.new(math.random(-40,40),6,math.random(-40,40)))
				pcall(function()
				na[i].Parent = v.Backpack
				end)
				wait(2)
				for i=-0.2, 1.2, 0.02 do
					wait()
					heh.TextTransparency = i
					heh.BackgroundTransparency = i
				end
				heh:remove()
				v.Character.Humanoid.WalkSpeed = 16
			end))
		end
	end)
	local de = Instance.new("TextButton",fr)
	de.Size = UDim2.new(0.8,0,0.25,0)
	de.Position = UDim2.new(0.1,0,0.4,0)
	de.Text = "Decline"
	de.MouseButton1Click:connect(function()
		sc:remove()
		local lo = p2.PlayerGui:findFirstChild("Fight")
		if lo ~= nil then lo:remove() end
	end)
end

function givegui(p1,p2)
	local pg1, pg2 = p1:findFirstChild("PlayerGui"), p2:findFirstChild("PlayerGui")
	if pg1 ~= nil and pg2 ~= nil then
		gui(p1,p2)
		gui(p2,p1)
	end
end

function find(pos,plr)
	local to = nil
	local dist = activatedist
	local temp = nil
	local temp2 = nil
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Character and v:findFirstChild("PlayerGui") and v ~= plr then
			if v.PlayerGui:findFirstChild("Fight") == nil and v.PlayerGui:findFirstChild("Fade") == nil then
				temp = v.Character:findFirstChild("Torso")
				temp2 = v.Character:findFirstChild("Humanoid")
				if temp ~= nil and temp2 ~= nil then
					if (temp.Position - pos).magnitude < dist then
						dist = (temp.Position - pos).magnitude
						to = v
					end
				end
			end
		end
	end
	return to
end

while true do
	wait(0.3)
	for _,v in pairs(game.Players:GetPlayers()) do
		if v.Character then
			if v.Character:findFirstChild("Torso") then
				local p = find(v.Character.Torso.Position, v)
				if p ~= nil then
					givegui(v, p)
				end
			end
		end
	end
end
