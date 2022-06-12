me = game.Players.LocalPlayer
char = me.Character
head = char.Head
plrgui = me.PlayerGui
where = 1

Pictures = {}

for _,v in pairs(plrgui:children()) do
	if v.Name == "LOL" then
		v:remove()
	end
end

sc = Instance.new("ScreenGui")
sc.Name = "LOL"

function RC(Pos, Dir, Max, Ignore)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
	return RC(Start, (En - Start), MaxDist, Ignore)
end

UD = UDim2.new
C3 = Color3.new

Fog = C3(0.3, 0.4, 0.7)

function EditGui(obj, parent, size, position, bgcolor, bordercolor, transparency, text, textcolor, auto)
	obj.Size = size
	obj.Position = position
	obj.BackgroundColor3 = bgcolor
	obj.BorderColor3 = bordercolor
	obj.BackgroundTransparency = transparency
	if obj:IsA("TextLabel") or obj:IsA("TextButton") then
		obj.Text = text
		obj.TextColor3 = textcolor
	end
	if obj:IsA("ImageButton") or obj:IsA("TextButton") then
		obj.AutoButtonColor = auto
		obj.MouseButton1Down:connect(function()
			RemoveOptions()
		end)
	end
	obj.Parent = parent
end

Resx, Resy = 1028, 768

sc.Parent = plrgui
test = Instance.new("Frame")
EditGui(test, sc, UD(1, 0, 1, 0), UD(0, 0, 0, 0), C3(), C3(), 1)
wait(0.15)
Resx, Resy = test.AbsoluteSize.X, test.AbsoluteSize.Y 
print(Resx..",  "..Resy)
Resx = Resx/5
Resy = Resy/5
test:remove()

main = Instance.new("Frame")
EditGui(main, sc, UD(0, Resx, 0, Resy), UD(1, -(Resx)-10, 1, -(Resy)-50), C3(1,1,1), C3(), 0)

Num = Instance.new("TextLabel",main)
EditGui(Num, main, UD(0.5, 0, 0, 20), UD(0.25, 0, 0, -24), C3(1,1,1), C3(), 0, 1, C3())

Rem = Instance.new("TextButton",main)
EditGui(Rem, main, UD(0.5, 0, 0, 20), UD(0.25, 0, 0, -44), C3(1,1,1), C3(), 0, "Remove", C3(), true)


Poops = {}

for X = 0, Resx, 3 do
	for Y = 0, Resy, 3 do
		local gui = Instance.new("Frame")
		EditGui(gui, main, UD(0, 3, 0, 3), UD(0, X, 0, Y), C3(1,1,0), C3(), 0)
		gui.BorderSizePixel = 0
		table.insert(Poops, {gui = gui, x = X, y = Y})
	end
end

cam = workspace.CurrentCamera

function place(var)
	for i,v in pairs(Pictures) do
		if v == var then
			return i
		end
	end
end

function loadPic(pic)
	for i,v in pairs(Poops) do
		v.gui.BackgroundColor3 = pic[i]
	end
	if place(pic) then
		Num.Text = "Pic "..place(pic)
		where = place(pic)
	end
end

function takePic(fro, t)
	local pic = {}
	for i,v in pairs(Poops) do
		local from = fro
		local angx = v.x-(Resx/2)
		local angy = v.y-(Resy/2)
		local to = CFrame.new(from, t) * CFrame.Angles(math.rad(-angy/3), math.rad(-angx/2.6), 0)
		to = to * CFrame.new(0, 0, -20).p
		local hit, pos = RayC(from, to, 300, char)
		local magn = (from - pos).magnitude
		local ma = magn/300
		ma = (1-ma)
		local col = Color3.new(0.5, 0.9, 1)
		if hit then
			local colo = hit.BrickColor.Color
			local r, g, b, r2, g2, b2 = Fog.r, Fog.g, Fog.b, colo.r, colo.g, colo.b
			local r3, g3, b3 = r-r2, g-g2, b-b2
			col = C3(r-r3*ma, g-g3*ma, b-b3*ma)
		else
			local tiem = game.Lighting:getMinutesAfterMidnight()
			if tiem < 600 or tiem > 2600 then
				col = Color3.new(0.05, 0.05, 0.1)
			end
		end
		pic[i] = col
	end
	table.insert(Pictures, pic)
	loadPic(pic)
end

Rem.MouseButton1Down:connect(function()
	local pic = Pictures[where]
	if pic then
		table.remove(Pictures, where)
		where = where - 1
		if where < 1 then
			where = 1
		end
		if Pictures[where] then
			loadPic(Pictures[where])
		else
			Num.Text = "Empty"
			for i,v in pairs(Poops) do
				v.gui.BackgroundColor3 = Color3.new(1,1,0)
			end
		end
	end
end)

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin", me.Backpack)
	h.Name = "Camera"
	script.Parent = h
end

bin = script.Parent

bin.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		takePic(head.Position, mouse.Hit.p)
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if #Pictures > 1 then
			if key == "q" then
				where = where - 1
				if where < 1 then
					where = #Pictures
				end
			elseif key == "e" then
				where = where + 1
				if where > #Pictures then
					where = 1
				end
			end
			loadPic(Pictures[where])
		end
	end)
end)
