me = game.Players.yfc
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Color"
script.Parent = h
end

sp = script.Parent

hold = false

colors = {}

for i = 1, 1032 do 
if BrickColor.new(i) ~= BrickColor.new("Medium stone grey") then 
table.insert(colors, tostring(BrickColor.new(i))) 
end 
end

order = 1
color = colors[order]
max = #colors

function msg()
	local ms = Instance.new("Message",workspace)
	ms.Text = "Color: "..color.."  N: "..order
	wait(0.5)
	ms:remove()
end

function check(value, second)
	if value > second then
		value = 1
	elseif value < 2 then
		value = second
	end
end

function sele(mouse,key)
	mouse.Button1Down:connect(function()
		hold = true
		sel = Instance.new("SelectionPointLasso")
		sel.Parent = workspace
		sel.Humanoid = me.Character.Humanoid
		sel.Point = mouse.Hit.p
		sel.Color = BrickColor.new(color)
		if mouse.Target ~= nil then
			if mouse.Target.Name == "Base" then return end
			mouse.Target.BrickColor = BrickColor.new(color)
		end
		mouse.Move:connect(function()
			if hold == true then
				sel.Color = BrickColor.new(color)
				sel.Point = mouse.Hit.p
				if mouse.Target == nil then return end
				if mouse.Target.Name == "Base" then return end
				mouse.Target.BrickColor = BrickColor.new(color)
			end
		end)
	end)
	mouse.Button1Up:connect(function()
		hold = false
		sel:remove()
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "q") then
			order = order - 1
			if order > max then
				order = 1
			elseif order < 1 then
				order = max
			end
			color = colors[order]
			msg()
		elseif (key == "e") then
			order = order + 1
			if order > max then
				order = 1
			elseif order < 1 then
				order = max
			end
			color = colors[order]
			msg()
		end
	end)
end

sp.Selected:connect(sele)

