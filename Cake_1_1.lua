local length = 5
local width = 5
local height = 2.5
local toppingdensity = 30
local scolors = {"New Yeller", "Deep orange", "Really red", "Hot pink", "Really blue", "Toothpaste", "Lime green", "Pink", "Bright red", "Bright blue", "Br. yellowish green", "Bright yellow", "Bright violet", "Bright green", "Bright orange", "White", "Institutional white"}

local cake = Instance.new("Model", workspace)
cake.Name = "Caik"

local top = Instance.new("Part", cake)
top.formFactor = "Custom"
top.Size = Vector3.new(length, height/2, width)
Instance.new("BlockMesh", top)
top.BrickColor = BrickColor.new("White")
top.Anchored = true
top.CanCollide = true
top.TopSurface = "Smooth"
top.BottomSurface = "Smooth"

local bottom = top:clone()
bottom.Parent = cake
bottom.BrickColor = BrickColor.new("Medium red")
bottom.CFrame = top.CFrame * CFrame.new(0, -height/2, 0)

for i = 1, toppingdensity do
	local sprinkle = Instance.new("Part", cake)
	sprinkle.Name = "Sprinkle"
	sprinkle.formFactor = "Custom"
	sprinkle.Size = Vector3.new(0.2, 0.2, 0.4)
	Instance.new("BlockMesh", sprinkle)
	sprinkle.Anchored = true
	sprinkle.CanCollide = true
	sprinkle.BrickColor = BrickColor.new(scolors[math.random(1, #scolors)])
	sprinkle.CFrame = top.CFrame * CFrame.new(math.random((-(length - 0.5)/2) * 100, ((length - 0.5)/2) * 100)/100, top.Size.y/2, math.random((-(width - 0.5)/2) * 100, ((width - 0.5)/2) * 100)/100) * CFrame.Angles(0, math.random(1, 360), 0)
end

local candle = Instance.new("Model", cake)
candle.Name = "Candle"

local stick = Instance.new("Part", candle)
stick.Name = "Candlestick"
stick.formFactor = "Custom"
stick.Size = Vector3.new(0.25, 2, 0.25)
Instance.new("BlockMesh", stick)
stick.Anchored = true
stick.CanCollide = true
stick.BrickColor = BrickColor.random()
stick.CFrame = top.CFrame * CFrame.new(0, (top.Size.y/2) + (stick.Size.y/2), 0)

local fuse = Instance.new("Part", candle)
fuse.Name = "Fuse"
fuse.formFactor = "Custom"
fuse.Size = Vector3.new(0.2, 0.3, 0.2)
Instance.new("BlockMesh", fuse).Scale = Vector3.new(0.5, 1, 0.5)
Instance.new("Fire", fuse).Size = fuse:GetMass()
fuse.Anchored = true
fuse.CanCollide = true
fuse.BrickColor = BrickColor.new("Really black")
fuse.CFrame = stick.CFrame * CFrame.new(0, (stick.Size.y/2) + (fuse.Size.y/2), 0)

cake:MoveTo(workspace.yfc.Torso.Position - Vector3.new(0, 3, 5))
script:remove()

--[[mediafire gtfo password]]--