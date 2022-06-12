local players = game:GetService("Players") 
local Me = players.Fuehrer 
--local pg = Me.PlayerGui 
local paintin = false 
local clr = Color3.new(0, 0, 0) 
local wid = 0.2 
--[[
local gui = Instance.new("ScreenGui", pg) 
gui.Name = "colorGui" 

local back = Instance.new("Frame", gui) 
back.Position = UDim2.new(0, 0, 0, 200) 
back.Size = UDim2.new(0, 200, 0, 200) 
back.BorderSizePixel = 0 
back.BackgroundColor = BrickColor.new("Reddish brown") 
back.BackgroundTransparency = 0.85
local color = Instance.new("TextLabel", back) 
color.Position = UDim2.new(0, 0, 0, 0) 
color.Size = UDim2.new(0, 200, 0, 20) 
color.BorderSizePixel = 0 
color.BackgroundColor3 = clr 
color.BackgroundTransparency = 0.5
color.Text = "" 
local colorup = Instance.new("TextButton", back) 
colorup.Position = UDim2.new(0, 0, 0, 20) 
colorup.Size = UDim2.new(0, 200, 0, 20) 
colorup.BorderSizePixel = 0 
colorup.BackgroundColor3 = clr 
colorup.Text = "increse" 
colorup.BackgroundTransparency = 0.5
local colordo = Instance.new("TextButton", back) 
colordo.Position = UDim2.new(0, 0, 0, 40) 
colordo.Size = UDim2.new(0, 200, 0, 20) 
colordo.BorderSizePixel = 0 
colordo.BackgroundColor3 = clr 
colordo.BackgroundTransparency = 0.5
colordo.Text = "decrease" 
colorup.MouseButton1Down:connect(function() 
if clr <= Color3.new(5, 5, 5) then 
clr = clr + Color3.new(0.25, 0.25, 0.25) 
end 
end) 
colordo.MouseButton1Down:connect(function() 
if clr >= Color3.new(0, 0, 0) then 
clr = clr - Color3.new(0.25, 0.25, 0.25) 
end 
end) 
]] 
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Paint" 
    script.Parent = h
pcall(function() pg.RpgGui:remove() end) 
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
if paintin == false then 
local pos = mouse.hit.p 
local lastpos = nil 
paintin = true 
paint1 = Instance.new("Part", Me.Character) 
paint1.formFactor = "Custom" 
paint1.Color = clr 
paint1.Size = Vector3.new(wid, 0.2, 0.2) 
paint1.Anchored = true 
paint1.Name = "Paint" 
paint1.CanCollide = false 
paint1.CFrame = CFrame.new(pos) 
mesh1 = Instance.new("BlockMesh", paint1) 
lastpos = paint1 
coroutine.resume(coroutine.create(function() 
while wait() do 
if paintin == true then 
pos = mouse.hit.p 
paint = Instance.new("Part", Me.Character) 
paint.formFactor = "Custom" 
paint.Color = clr
paint.Size = Vector3.new(wid, 0.2, (lastpos.Position - pos).magnitude) 
paint.Anchored = true 
paint.Name = "Paint" 
paint.CanCollide = false 
paint.CFrame = CFrame.new((lastpos.Position + pos)/2, lastpos.Position) 
mesh = Instance.new("BlockMesh", paint) 
lastpos = paint 
else 
break 
end 
end 
end)) 
end 
    end)
    mouse.Button1Up:connect(function()
paintin = false 
    end)
    mouse.KeyDown:connect(function(key)
	if key == "q" then 
	for _,v in pairs(Me.Character:GetChildren()) do 
if v.Name == "Paint" then 
v:remove() 
end 
	end 
	end 
	if key == "x" then 
if wid >= 0 then 
wid = wid - 0.05 
end 
	end 
	if key == "z" then 
if wid <= 2 then 
wid = wid + 0.05 
end 
	end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
