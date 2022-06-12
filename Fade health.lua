local Distance = 200

local Color1 = Color3.new(0.2, 1, 0.1)
local Color2 = Color3.new(0.8, 0, 0.1)

local Name = "GuiThing"
local Me = game.Players.LocalPlayer
local Char = Me.Character
local Hum = Char.Humanoid
local Gui = Me:findFirstChild("PlayerGui")
pcall(function() Gui[Name]:remove() end)
local Sc = Instance.new("ScreenGui")
Sc.Name = Name
Sc.Parent = Gui

function getDif(c1, c2)
	return Color3.new(c1.r-c2.r, c1.g-c2.g, c1.b-c2.b)
end

HealthBars = {}

for i = 0, 1, 0.01 do
	local col2 = getDif(Color1, Color2)
	local pos1 = Vector2.new(-(Distance/8), 0)
	local pos2 = Vector2.new(-Distance, ((Distance/2)-Distance*i))
	local unit = (pos1 - pos2).unit
	local color = Color3.new(Color1.r-(col2.r*i), Color1.g-(col2.g*i), Color1.b-(col2.b*i))
	local g = Instance.new("Frame",Sc)
	g.Size = UDim2.new(0, Distance/4, 0, Distance/60)
	g.BorderSizePixel = 0
	g.BackgroundColor3 = color
	g.Position = UDim2.new(0.5, pos1.x, 0.5, 0) + UDim2.new(0, unit.x*Distance, 0, unit.y*Distance)
	table.insert(HealthBars, {gui = g, color = color})
end

Hum.HealthChanged:connect(function(hp)
	local max = Hum.MaxHealth
	for i = 1, #HealthBars do
		local where2 = math.floor(max*(hp/i))
		local tab2 = HealthBars[where2]
		local where = math.floor(i*(hp/max))
		local tab = HealthBars[where]
		if tab then
			tab.gui.BackgroundColor3 = tab.color
		end
		if tab2 then
			tab2.gui.BackgroundColor3 = Color3.new()
		end
	end
end)

wait(1)

Hum:TakeDamage(40)
