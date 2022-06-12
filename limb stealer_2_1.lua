local Me = game.Players.LocalPlayer 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = ""
sc = Instance.new("ScreenGui") 
sc.Name = "Invisible" 
sc.Parent = Me.PlayerGui 
t = Instance.new("TextLabel") 
t.BackgroundTransparency = 0.75 
t.Name = "Text - Reset" 
t.Parent = sc 
t.Position = UDim2.new(0, 0, 0, 150) 
t.Size = UDim2.new(0, 200, 0, 200) 
t.Text = "" 
t.Visible = true 
t2 = Instance.new("TextLabel") 
t2.BackgroundTransparency = 0.3 
t2.Name = "Text - Reset" 
t2.Parent = sc 
t2.Position = UDim2.new(0, 0, 0, 150) 
t2.Size = UDim2.new(0, 0, 0, 200) 
t2.Text = "" 
t2.Visible = true 
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
    mouse.Button1Down:connect(function()
brick = mouse.Target 
t.Text = brick.Name 
for i = 0, 1, 0.05 do 
t2.Size = t2.Size + UDim2.new(0, 10, 0, 0) 
wait() 
end 
local tool = Instance.new("Tool", Me.Backpack) 
tool.Name = "" ..brick.Name.. "" 
brick.Parent = tool 
brick.Name = "Handle" 
t2.Size = UDim2.new(0, 0, 0, 200) 
t.Text = "" 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
brick = mouse.Target 
bin.Name = brick.Name 
	end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
