me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "SaveCF"
script.Parent = h
end

sp = script.Parent
hold = false
using = false

function eff(thing)
	local ok = thing:clone()
	ok.Parent = workspace
	ok.Transparency = 0.2
	ok.BrickColor = BrickColor.new("Black")
	ok.Anchored = true
	ok.CFrame = thing.CFrame
	coroutine.resume(coroutine.create(function()
		for i=1, 32 do
			wait()
			ok.Transparency = ok.Transparency + 0.025
		end
		ok:remove()
	end))
end

gui = Instance.new("ScreenGui",me.PlayerGui)
gui.Name = "Things"

pos1 = 5
pos2 = 180
number = 1

function guithis(tab, par)
	local paa = Instance.new("TextButton",gui)
	paa.Size = UDim2.new(0,90,0,20)
	paa.Position = UDim2.new(0,pos1,0,pos2)
	paa.Text = "CFrame "..number
	paa.MouseButton1Click:connect(function()
		for i=1, #tab do
			par.CFrame = tab[i]
			eff(par)
			wait()
		end
	end)
	pos2 = pos2 + 22
	if pos2 >= 400 then
		pos2 = 180
		pos1 = pos1 + 100
	end
	number = number + 1
end

function sel(mouse)
	mouse.Button1Down:connect(function()
		if using == true then return end
		using = true
		cframes = {}
		part = Instance.new("Part",workspace)
		part.formFactor = "Plate"
		part.Size = Vector3.new(3,0.4,3)
		part.Anchored = true
		mes = Instance.new("SpecialMesh",part)
		mes.MeshType = "Brick"
		hold = true
		while hold == true do
			part.CFrame = CFrame.new(mouse.Hit.p, me.Character.Torso.Position)
			table.insert(cframes,part.CFrame)
			eff(part)
			wait(1/math.huge)
		end
	end)
	mouse.Button1Up:connect(function()
		if hold == false then return end
		hold = false
		guithis(cframes,part)
		using = false
	end)
end

sp.Selected:connect(sel)

