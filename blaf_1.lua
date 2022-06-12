local Me = game.Players.LocalPlayer 
local paintin = false 
local clr = Color3.new(0, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Paint" 
    script.Parent = h
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
paint1.Size = Vector3.new(0.2, 0.2, 0.2) 
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
paint.Size = Vector3.new(0.2, 0.2, (lastpos.Position - pos).magnitude) 
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
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
