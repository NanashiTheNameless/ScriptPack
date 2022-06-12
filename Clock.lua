script.Parent = nil
text = "hours:mins:secs"
main = Vector3.new(-10,1.7,40)

sec = nil
min = nil
ho = nil
mod = nil

function makeclock()
for _,v in pairs(workspace:children()) do if v.Name == "xSclock" then v:remove() end end 
local m = Instance.new("Model",workspace)
m.Name = "xSclock"
local o = 5
local humbug = 5
for i=0,354,6 do
	local p = Instance.new("Part",m)
	p.formFactor = "Custom"
	p.TopSurface = "Smooth"
	Instance.new("BlockMesh",p)
	if o >= 5 then
		p.Size = Vector3.new(0.9,1,2.6)
		p.BrickColor = BrickColor.new("Institutional white")
		o = 0
	else
		p.Size = Vector3.new(0.5,0.8,0.8)
	end
	if humbug == 5 then
		p.Size = Vector3.new(1,1,4.5)
		p.BrickColor = BrickColor.new("New Yeller")
		local bil = Instance.new("BillboardGui",p)
		bil.Adornee = p
		bil.Size = UDim2.new(0,200,0,200)
		local tx = Instance.new("TextLabel",bil)
		tx.BackgroundTransparency = 1
		tx.Size = bil.Size
		tx.Position = UDim2.new(0,0,0,-80)
		tx.TextWrap = true
		tx.TextColor3 = Color3.new(1,1,0)
		tx.FontSize = "Size24"
		coroutine.resume(coroutine.create(function()
			while m.Parent ~= nil do
				wait(0.1)
				local tim = time()
				local hours = math.floor((tim/60)/60 % 24)
				local mins = math.floor(tim/60 % 60)
				local secs = math.floor(tim % 60)
				if hours < 10 then hours = "0"..hours end
				if mins < 10 then mins = "0"..mins end
				if secs < 10 then secs = "0"..secs end
				local t = text:gsub("hours", hours)
				local te = t:gsub("mins", mins)
				local tex = te:gsub("secs", secs)
				tx.Text = tex
			end
		end))
		humbug = 0
	end
	p.Anchored = true
	p.CFrame = CFrame.new(main) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-15)
	o = o + 1
end

local se = Instance.new("Part",m)
se.formFactor = "Custom"
se.Size = Vector3.new(0.8,0.8,14)
se.Anchored = true
se.BrickColor = BrickColor.new("Bright red")
se.CFrame = CFrame.new(main) * CFrame.new(0,0,-se.Size.Z/2)
Instance.new("BlockMesh",se)
local mi = Instance.new("Part",m)
mi.formFactor = "Custom"
mi.Size = Vector3.new(0.8,0.8,15)
mi.BrickColor = BrickColor.new("Dark green")
mi.Anchored = true
mi.CFrame = CFrame.new(main) * CFrame.new(0,0,-mi.Size.Z/2)
Instance.new("BlockMesh",mi)
local h = Instance.new("Part",m)
h.formFactor = "Custom"
h.Size = Vector3.new(0.6,0.6,11)
h.BrickColor = BrickColor.new("White")
h.Anchored = true
h.CFrame = CFrame.new(main) * CFrame.new(0,0,-h.Size.Z/2)
Instance.new("BlockMesh",h)
sec = se
min = mi
ho = h
mod = m
local huh = Instance.new("Part",m)
huh.Size = Vector3.new(34,1,34)
huh.Anchored = true
huh.CFrame = CFrame.new(main) * CFrame.new(0,-0.4,0)
huh.BrickColor = BrickColor.new("Black")
Instance.new("CylinderMesh",huh)
local mmm = huh:clone()
mmm.Parent = m
mmm.Size = Vector3.new(2,1,2)
mmm.CFrame = CFrame.new(main)
mmm.BrickColor = BrickColor.new("Really black")
local able = true
local function change(pr)
	if pr == "Parent" and able then
		able = false
		for _,v in pairs(workspace:children()) do if v.Name == "xSclock" then v:remove() end end 
		makeclock()
	end
end
for _,v in pairs(mod:children()) do v.Changed:connect(change) end
mod.Changed:connect(change)
end

makeclock()

while true do
pcall(function()
local ti = time()
local angs = CFrame.Angles(0,math.rad(-ti*6),0)
local angm = CFrame.Angles(0,math.rad(-(ti*6)/60),0)
local angh = CFrame.Angles(0,math.rad(-((ti*6)/60))/12,0)
sec.CFrame = CFrame.new(main) * angs * CFrame.new(0,0,-sec.Size.Z/2)
min.CFrame = CFrame.new(main) * angm * CFrame.new(0,0,-min.Size.Z/2)
ho.CFrame = CFrame.new(main) * angh * CFrame.new(0,0,-ho.Size.Z/2)
end)
wait(0.1)
end

