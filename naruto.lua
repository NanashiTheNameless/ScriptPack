local mp = game.Players.LocalPlayer
while wait() do if mp.Character then break end end
local disable = nil
if mp:FindFirstChild("disable") then
	disable = mp.disable
else
	disable = Instance.new("BoolValue",mp)
	disable.Name = "disable"
	disable.Value = false
end
local mpc = mp.Character
local rs = mpc.Torso["Right Shoulder"]
local ls = mpc.Torso["Left Shoulder"]
local rh = mpc.Torso["Right Hip"]
local lh = mpc.Torso["Left Hip"]
local neck = mpc.Torso.Neck
local mouse = mp:GetMouse()
local spam = false
local susano = false
local sharingan = false
local mana = 100
local torso,ta,head,neck,sr,rw,sl,lw = nil,nil,nil,nil,nil,nil,nil,nil
local charge = false
function chat(text)
	game:GetService("Chat"):Chat(mpc.Head, text)
end
function fw(wf)
	game:GetService("RunService").Stepped:wait(wf)
end
mouse.KeyDown:connect(function(key)
if disable.Value == true then return end
ypcall(function()
	if key == "f" and spam == false and mana>=25 then
		spam = true
		for i=1,15 do
			rs.C0 = rs.C0 * CFrame.Angles(0,0,0.1)
			fw(0.25)
		end
		mana=mana-25
		chat("Rasengan!")
		local ras = Instance.new("Part",workspace)
		ras.Name = "Rasengan"
		ras.FormFactor = "Custom"
		ras.Size = Vector3.new(2, 2, 2)
		ras.TopSurface = "Smooth"
		ras.BottomSurface = "Smooth"
		ras.BrickColor = BrickColor.new("Cyan")
		local rm = Instance.new("SpecialMesh",ras)
		rm.MeshType = "Sphere"
		rm.Scale = Vector3.new(1.25,1.25,1.25)
		local weld = Instance.new("Weld",ras)
		weld.Part0 = mpc["Right Arm"]
		weld.Part1 = ras
		weld.C0 = CFrame.new(0,-2,0)
		local once = false
		mpc.Humanoid.WalkSpeed = 30
		ras.Touched:connect(function(hit)
			if once == true then return end
			if hit.Parent.ClassName == "Model" and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= mp.Name then
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 40
				hit.Parent.Humanoid.Sit = true
				if hit.Parent:FindFirstChild("Torso") then
					hit.Parent.Torso.Velocity = mpc.Torso.CFrame.lookVector*80
				end
				mpc.Humanoid.WalkSpeed = 16
				ras:remove()				
				once = true
				for i=1,15 do
					rs.C0 = rs.C0 * CFrame.Angles(0,0,-0.1)
					fw(0.25)
				end
				chat("Haa")	
			end		
		end)
		if once == false then
			wait(5)
			if once == false then
				ras:remove()
				mpc.Humanoid.WalkSpeed = 16
				for i=1,15 do
					rs.C0 = rs.C0 * CFrame.Angles(0,0,-0.1)
					fw(0.25)
				end			
			end
		end
		spam = false
	elseif key == "g" and spam == false and mana>=40 then
		spam = true
		mana = mana - 40
		chat("Katon: FireBall Jutsu!")
		for i=1,15 do
			rs.C0 = rs.C0 * CFrame.Angles(0,0,0.1)
			ls.C0 = ls.C0 * CFrame.Angles(0,0,-0.1)
			fw(0.25)
		end
		for i=1,10 do
			rs.C0 = rs.C0 * CFrame.Angles(0.1,0,0)
			ls.C0 = ls.C0 * CFrame.Angles(0.1,0,0)
			fw(0.25)
		end
		local fb = Instance.new("Part",workspace)
		fb.Shape = "Ball"
		fb.BrickColor = BrickColor:Red()
		fb.Size = Vector3.new(15,15,15)
		fb.TopSurface = "Smooth"
		fb.BottomSurface = "Smooth"
		fb.CFrame = mpc.Torso.CFrame * CFrame.new(0,7.5,-15)
		local fire = Instance.new("Fire",fb)
		fire.Color = Color3.new(255,0,0)
		fire.SecondaryColor = Color3.new(255,0,0)
		fire.Heat = 25
		fire.Size = 20
		local dir = Instance.new("BodyVelocity",fb)
		dir.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		dir.velocity = mpc.Torso.CFrame.lookVector*80		
		local once = false
		fb.Touched:connect(function(hit)
			if once == true then return end
			if hit.Parent.ClassName == "Model" and hit.Parent:FindFirstChild("Humanoid") and hit.Parent:FindFirstChild("Torso") and hit.Parent.Name ~= mp.Name then
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 60
				once = true
				dir:remove()
				chat("Hmph..")
				fb.Anchored = true
				fb.Size = Vector3.new(50,50,50)
				fb.CFrame = hit.Parent.Torso.CFrame
				wait(5)
				fb:remove()
			end
		end)
		if once ~= true then
			wait(5)
			fb:remove()
		end
		for i=1,10 do
			rs.C0 = rs.C0 * CFrame.Angles(-0.1,0,0)
			ls.C0 = ls.C0 * CFrame.Angles(-0.1,0,0)
			fw(0.25)
		end
		for i=1,15 do
			rs.C0 = rs.C0 * CFrame.Angles(0,0,-0.1)
			ls.C0 = ls.C0 * CFrame.Angles(0,0,0.1)
			fw(0.25)
		end
		spam = false
	elseif key == "q" and spam == false and mana>=20 then
		spam = true
		mana = mana - 80
		chat("Headhunter")
		mpc.Humanoid.WalkSpeed = 20
		local once = false
		local t = nil		
		mpc.Torso.Touched:connect(function(hit)
			if once == true then return end
			if hit.Parent.ClassName == "Model" and hit.Parent:FindFirstChild("Torso") and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= mp.Name then
				once = true
				hit.Parent.Torso.Anchored = true
				mpc.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.new(0,0,10)
				wait(0.15)
				hit.Parent.Torso.CFrame = hit.Parent.Torso.CFrame * CFrame.new(0,-3.5,0)
				t = hit.Parent.Torso
				chat("Hmph")
			end
		end)
		wait(5)
		mpc.Humanoid.WalkSpeed = 16
		if once == true then
			wait(1.5)
			t.Parent.Humanoid.Health = t.Parent.Humanoid.Health - 10
			t.CFrame = t.CFrame * CFrame.new(0,3.5,0)
			t.Anchored = false
		else
			once = true		
		end
		spam = false
	elseif key == "c" and spam == false and mana<100 then
		spam = true
		local fire = Instance.new("Fire",mpc.Torso)
		fire.Heat = 0
		fire.Size = 5
		fire.Color = Color3.new(0,0,255)
		for i=1,10 do
			rs.C0 = rs.C0 * CFrame.Angles(0,0,0.1)
			ls.C0 = ls.C0 * CFrame.Angles(0,0,-0.1)
			fw(0.25)
		end
		for i=1,10 do
			rs.C0 = rs.C0 * CFrame.Angles(0.1,0,0)
			ls.C0 = ls.C0 * CFrame.Angles(0.1,0,0)
			fw(0.25)
		end
		charge = true
	elseif key == "e" and spam == false and mana>=20 then
		spam = true
		chat("64 Palms and 32 Trigrams!")
		mana=mana-80
		for i=1,15 do
			rs.C0 = rs.C0 * CFrame.Angles(0,0,0.1)
		end
		
		local once = false
		local finished = false
		mpc["Right Arm"].Touched:connect(function(hit)
			if once == true then return end
			if hit.Parent.ClassName == "Model" and hit.Parent:FindFirstChild("Torso") and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= mp.Name then
				once = true
				for i=1,15 do
					ls.C0 = ls.C0 * CFrame.Angles(0,0,-0.1)
				end
				hit.Parent.Torso.Anchored = true			
				for i=1,64,2 do
					chat(tostring(i))
					ls.C0 = ls.C0 * CFrame.new(0,-1,0)
					rs.C0 = rs.C0 * CFrame.new(0,-1,0)
					fw(0.25)
					chat(tostring(i+1))
					ls.C0 = ls.C0 * CFrame.new(0,1,0)
					rs.C0 = rs.C0 * CFrame.new(0,1,0)
					hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 3
					fw(0.25)
				end
				chat("HAA!")
				hit.Parent.Torso.Anchored = false
				wait()
				hit.Parent.Humanoid.Sit = true
				hit.Parent.Torso.Velocity = mpc.Torso.CFrame.lookVector*80
				for i=1,15 do
					rs.C0 = rs.C0 * CFrame.Angles(0,0,-0.1)
				end
				for i=1,15 do
					ls.C0 = ls.C0 * CFrame.Angles(0,0,0.1)
				end
				finished = true
			end
		end)
		wait(3)
		if once == true then
			while wait() do
				if finished == true then
					break
				end
			end
		else
			for i=1,15 do
				rs.C0 = rs.C0 * CFrame.Angles(0,0,-0.1)
			end
			finished = true
			once = true
		end
		spam = false
	elseif key == "h" and spam == false and mana==100 then
		if susano == false then
			spam = true
			mana=mana-100
			chat("Susano'o!")
			wait(1)
			local model = mpc
			torso = Instance.new("Part",model)
			torso.Name = "Torso"
			torso.Transparency = 0.4
			torso.BrickColor = BrickColor.new(107)
			torso.Size = Vector3.new(25.4,29,17.6)
			torso.CFrame = mpc.Torso.CFrame * CFrame.new(0,26,0)
			torso.TopSurface = "Smooth"
			torso.BottomSurface = "Smooth"
			ta = Instance.new("Weld",torso)
			ta.Part0 = mpc.Torso
			ta.Part1 = torso
			ta.C0 = CFrame.new(0,torso.Size/2,0)
			head = Instance.new("Part",model)
			head.Name = "Head"
			head.Transparency = 0.4
			head.BrickColor = BrickColor.new(107)
			head.TopSurface = "Smooth"
			head.BottomSurface = "Smooth"
			head.Size = Vector3.new(25.4,14.2,17.6)
			neck = Instance.new("Weld",head)
			neck.Part0 = torso
			neck.Part1 = head
			neck.C0 = CFrame.new(0,(29/2)+7,0)
			local cool = Instance.new("SpecialMesh",head)
			cool.MeshType = "FileMesh"
			cool.MeshId = "http://www.roblox.com/asset/?id=1090446"	
			cool.Scale = Vector3.new(10, 7, 10)
			cool.TextureId = "http://www.roblox.com/asset/?id=36761415"
			sr = Instance.new("Part",model)
			sr.Name = "Right Arm"
			sr.Transparency = 0.04
			sr.BrickColor = BrickColor.new(107)
			sr.TopSurface = "Smooth"
			sr.BottomSurface = "Smooth"
			sr.FormFactor = "Custom"
			sr.Size = Vector3.new(12,29,17.6)
			rw = Instance.new("Weld",sr)
			rw.Part0 = torso
			rw.Part1 = sr
			rw.C0 = CFrame.new(25.4-7,0,0)
			sl = Instance.new("Part",model)
			sl.Name = "Left Arm"
			sl.Transparency = 0.04
			sl.BrickColor = BrickColor.new(107)
			sl.TopSurface = "Smooth"
			sl.BottomSurface = "Smooth"
			sl.FormFactor = "Custom"
			sl.Size = Vector3.new(12,29,17.6)
			lw = Instance.new("Weld",sl)
			lw.Part0 = torso
			lw.Part1 = sl
			lw.C0 = CFrame.new(-25.4+7,0,0)
			mpc.Humanoid.WalkSpeed = 30
			susano = true
			spam = false
		else
			spam = true
			ta:remove() neck:remove() rw:remove() lw:remove() torso:remove() head:remove() sr:remove() sl:remove()
			susano = false
			spam = false
		end
	elseif key == "k" and spam == false and susano == true then
		spam = true
		for i=1,60 do
			rw.C0 = rw.C0 * CFrame.Angles(0.01,0,0)
			fw(0.25)
		end
		local once = false
		sr.Touched:connect(function(hit)
			if once == true then return end
			if hit.Parent.ClassName == "Model" and hit.Parent:FindFirstChild("Torso") and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= mp.Name then
				once = true
				hit.Parent.Humanoid.Sit = true
				hit.Parent.Torso.Velocity = mpc.Torso.CFrame.lookVector*math.random(80,100)
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(60,80)
				for i=1,60 do
					rw.C0 = rw.C0 * CFrame.Angles(-0.01,0,0)
					fw(0.25)
				end
			end
		end)
		wait(5)
		if once == false then
			for i=1,60 do
				rw.C0 = rw.C0 * CFrame.Angles(-0.01,0,0)
				fw(0.25)
			end
			once = true
		end
		spam = false
		elseif key == "j" and spam == false and susano == true then
		spam = true
		for i=1,60 do
			lw.C0 = lw.C0 * CFrame.Angles(0.01,0,0)
			fw(0.25)
		end
		local once = false
		sl.Touched:connect(function(hit)
			if once == true then return end
			if hit.Parent.ClassName == "Model" and hit.Parent:FindFirstChild("Torso") and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= mp.Name then
				once = true
				hit.Parent.Humanoid.Sit = true
				hit.Parent.Torso.Velocity = mpc.Torso.CFrame.lookVector*math.random(80,100)
				hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(60,80)
				for i=1,60 do
					lw.C0 = lw.C0 * CFrame.Angles(-0.01,0,0)
					fw(0.25)
				end
			end
		end)
		wait(5)
		if once == false then
			for i=1,60 do
				lw.C0 = lw.C0 * CFrame.Angles(-0.01,0,0)
				fw(0.25)
			end
			once = true
		end
		spam = false
	elseif key == "r" then
		if sharingan == false then	
			mpc.Head.face.Texture = "http://www.roblox.com/asset/?id=73586045"
			sharingan = true
			for k,v in pairs(workspace:GetChildren()) do
				if v.ClassName == "Model" and v:FindFirstChild("Torso") and v.Name ~= mp.Name then
					local bg = Instance.new("BillboardGui",workspace.CurrentCamera)
					bg.Name = "psw"
					bg.Size = UDim2.new(1,0,1)
					bg.AlwaysOnTop = true
					bg.Adornee = v.Torso
					local frame = Instance.new("Frame",bg)
					frame.Size = UDim2.new(0,10,0,10)
					frame.BackgroundColor3 = Color3.new(21,0,0)
					frame.BorderColor3 = Color3.new(0,0,0)
					frame.BorderSizePixel = 5
				end
			end	
		else
			mpc.Head.face.Texture = "rbxasset://textures/face.png"
			sharingan = false
			workspace.CurrentCamera:ClearAllChildren()
		end
	end
end)
end)

mouse.KeyUp:connect(function(key)
if disable.Value == true then return end
ypcall(function()
	if key == "c" and charge == true then
		charge = false		
		mpc.Torso.Fire:remove()
		for i=1,10 do
			rs.C0 = rs.C0 * CFrame.Angles(-0.1,0,0)
			ls.C0 = ls.C0 * CFrame.Angles(-0.1,0,0)
			fw(0.25)
		end
		for i=1,10 do
			rs.C0 = rs.C0 * CFrame.Angles(0,0,-0.1)
			ls.C0 = ls.C0 * CFrame.Angles(0,0,0.1)
			fw(0.25)
		end
		spam = false
	end
end)
end)

game:GetService("RunService").Stepped:connect(function()
	if charge == true and mana<100 then	
		mana = mana + 1
		wait(1)
	end
end)

game:GetService("RunService").Stepped:connect(function()
	ypcall(function()
		if mana<=0 then		
			mp.PlayerGui.Main.Chakra.Text = "Chakra: 0"
		else
			mp.PlayerGui.Main.Chakra.Text = "Chakra: "..mana
		end
	end)
end)
