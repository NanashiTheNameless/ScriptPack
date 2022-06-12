me = game.Players.yfc

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Edit parts"
script.Parent = h
end

bin = script.Parent

function getprops(brick)
	local props = {}
	table.insert(props,"Parent")
	table.insert(props,"Name")
	table.insert(props,"className")
	if brick:IsA("BasePart") then
		table.insert(props,"Size")
		table.insert(props,"BrickColor")
		table.insert(props,"Position")
		table.insert(props,"Anchored")
		table.insert(props,"CanCollide")
		table.insert(props,"Transparency")
		table.insert(props,"Reflectance")
	end
	return props
end

function makeprop(wut)
	local sc = Instance.new("ScreenGui",me.PlayerGui)
	sc.Name = "Edit"
	local pro = getprops(wut)
	local y = 0.3
	for _,v in pairs(pro) do
		local prop = tostring(wut[v])
		local k = Instance.new("TextLabel",sc)
		k.Text = v
		k.Size = UDim2.new(0.2,0,0.02,0)
		k.Position = UDim2.new(0.02,0,y,0)
		k.BackgroundColor3 = Color3.new(0.7,1,0)
		local o = Instance.new("TextBox",k)
		o.Text = prop
		o.Size = UDim2.new(1,0,1,0)
		o.Position = UDim2.new(1,0,0,0)
		o.BackgroundColor3 = Color3.new(1,0.7,0.2)
		o.Changed:connect(function(prooo)
			if prooo == "Text" then
				wut[v] = o.Text
				if v == "BrickColor" then
					wut[v] = BrickColor.new(o.Text)
				end
				wait(0.1)
				o.Text = tostring(wut[v])
			end
		end)
		y = y + 0.05
	end
end

function remgui()
	for _,v in pairs(me.PlayerGui:GetChildren()) do
		if v.Name == "Edit" then
			v:remove()
		end
	end
end

function select(mouse)
	mouse.Button1Down:connect(function()
		remgui()
		makeprop(mouse.Target)
	end)
end

function de()
	remgui()
end

bin.Deselected:connect(de)
bin.Selected:connect(select)
