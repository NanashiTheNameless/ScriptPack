me = game.Players.ace28545
name = "xSoul's Explorer"

border = Color3.new(0.15,0.2,0.05)
mainback = Color3.new(0.03,0.04,0.06)
back = Color3.new(0.04,0.08,0.12)
text = Color3.new(0.5,0.4,0.8)

screen = nil
frame = nil
its = nil
listatm = {}

function makegui(l)
for _,v in pairs(me.PlayerGui:children()) do if v.Name == name then v:remove() end end
local sc = Instance.new("ScreenGui",me.PlayerGui)
sc.Name = name
screen = sc
local fra = Instance.new("Frame",sc)
fra.Size = UDim2.new(0.22,0,0.4)
fra.Position = UDim2.new(0,0,0.4,0)
fra.BackgroundColor3 = mainback
fra.BorderColor3 = border
frame = fra
local items = Instance.new("Frame",fra)
items.Size = UDim2.new(0.74,0,0.8)
items.Position = UDim2.new(0,0,0.07,0)
items.BackgroundColor3 = Color3.new(0,0,0)
items.BorderColor3 = border
its = items
local down = Instance.new("TextButton",items)
down.Size = UDim2.new(0.95,0,0.05,0)
down.Position = UDim2.new(0,0,1,0)
down.BackgroundColor3 = Color3.new(0,0,0)
down.BorderColor3 = border
down.TextColor3 = Color3.new(1,1,1)
down.FontSize = "Size14"
down.Text = "^"
down.MouseButton1Down:connect(function()
end)
end

function gp(o)
	local p = {}
	table.insert(p,"className")
	table.insert(p,"Parent")
	table.insert(p,"Name")
	if o:IsA("BasePart") then
		table.insert(p,"Size")
		table.insert(p,"Position")
		table.insert(p,"BrickColor")
		table.insert(p,"Transparency")
		table.insert(p,"Reflectance")
	elseif o:IsA("Fire") then
		table.insert(p,"Size")
		table.insert(p,"Heat")
		table.insert(p,"Color")
		table.insert(p,"SecondaryColor")
	elseif o:IsA("Smoke") then
		table.insert(p,"RiseVelocity")
		table.insert(p,"Size")
		table.insert(p,"Color")
		table.insert(p,"Opacity")
	elseif o:IsA("IntValue") or o:IsA("ObjectValue") or o:IsA("NumberValue") or o:IsA("BrickColorValue") or o:IsA("Color3Value") or o:IsA("Vector3Value") then
		table.insert(p,"Value")
	end
end

function open(w)
	local list = w:children()
	local y = 0
	for i,v in pairs(list) do
		local txt = Instance.new("TextButton")
		txt.Size = UDim2.new(1,0,0.07,0)
		txt.Position = UDim2.new(0,0,y,0)
		txt.BackgroundColor3 = mainback
		txt.BorderColor3 = border
		txt.TextColor3 = text
		txt.TextXAlignment = "Left"
		txt.Text = i..") "..v.Name
		txt.MouseButton1Click:connect(function()
			open(v)
		end)
		txt.Parent = its
		y = y + txt.Size.Y.Scale
		if y >= 1 then break end
	end
end

makegui()
wait(0.2)
open(workspace)



