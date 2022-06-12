script.Parent = nil
me = game.Players.izzatnasruna

function getparts(path)
	local parts = {}
	for _,v in pairs(path:GetChildren()) do
		if v:IsA("BasePart") then
			table.insert(parts,v)
		end
		for _,k in pairs(v:GetChildren()) do
			if k:IsA("BasePart") then
				table.insert(parts,k)
			end
			for _,i in pairs(k:GetChildren()) do
				if i:IsA("BasePart") then
					table.insert(parts,i)
				end
			end
		end
	end
	return parts
end

function gui()
distance = 110
sizemultiplier = 2

dist = distance*sizemultiplier

map = Instance.new("ScreenGui",me.PlayerGui)
map.Name = "Map"

bg = Instance.new("ImageLabel",map)
bg.Size = UDim2.new(0,dist*2,0,dist*2)
bg.Position = UDim2.new(0.02,0,0.24,0)
bg.Image = "http://www.roblox.com/asset/?id=42302151"
bg.BackgroundTransparency = 1

mepoint = Instance.new("ImageLabel",bg)
mepoint.Size = UDim2.new(0,15,0,15)
mepoint.Position = UDim2.new(0.46,0,0.46,0)
mepoint.BackgroundTransparency = 1
mepoint.Image = "http://www.roblox.com/asset/?id=42302520"

empoint = Instance.new("Frame")
empoint.Size = UDim2.new(0,12,0,12)
empoint.BorderSizePixel = 0

siz = Instance.new("TextLabel",bg)
siz.Size = UDim2.new(0.3,0,0.06,0)
siz.Position = UDim2.new(0,0,-0.06,0)
siz.Text = "Size multiply"
siz.BackgroundColor3 = Color3.new(0.4,0.4,0.4)
siz.BackgroundTransparency = 0.6

sizea = Instance.new("TextBox",siz)
sizea.Size = UDim2.new(1,0,1,0)
sizea.Position = UDim2.new(0,0,1,0)
sizea.Text = 2
sizea.BackgroundColor3 = Color3.new(0.4,0.4,0.4)
sizea.BackgroundTransparency = 0.6
sizea.Changed:connect(function(prop)
	if prop == "Text" then
		sizemultiplier = sizea.Text
	end
end)

while true do
	wait(0.1)
	local objs = getparts(workspace)
	for _,v in pairs(objs) do
		if me.Character:findFirstChild("Head") then
		local di = (me.Character.Head.Position - v.Position).magnitude
		if di < dist/(sizemultiplier+0.4) then
			if v.Size.X < 20 or v.Size.Z < 20 then
			local pos = me.Character.Head.Position*sizemultiplier
			local pos2 = v.Position*sizemultiplier
			local cool1 = -(pos2.X - pos.X)
			local cool2 = -(pos2.Z - pos.Z)
			local um = empoint:clone()
			um.Parent = mepoint
			local ok1 = v.Size.X*sizemultiplier
			local ok2 = v.Size.Z*sizemultiplier
			um.BackgroundColor = v.BrickColor
			um.BackgroundTransparency = v.Transparency/2
			um.Size = UDim2.new(0,ok1,0,ok2)
			um.Position = UDim2.new(0,cool1-(um.Size.X.Offset/2)+6,0,cool2-(um.Size.Y.Offset/2)+6)
			coroutine.resume(coroutine.create(function() wait(0.14) um:remove() end))
			end
		end
		end
	end
end
end

gui(me)
change = function(por)
	if por == "Character" then
		gui(me)
	end
end

me.Changed:connect(change)
