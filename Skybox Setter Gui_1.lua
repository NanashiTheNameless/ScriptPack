--joseph2235
gui = Instance.new("ScreenGui",game.CoreGui)
gui.Name = "SkyboxSetter"
gui.ResetOnSpawn = false

box = Instance.new("Frame",gui)
box.Name = "Box"
box.Size = UDim2.new(0,300,0,200)
box.Position = UDim2.new(0,650,0,300)
box.BackgroundColor3 = Color3.new(255,255,255)
box.BackgroundTransparency = .65
box.BorderSizePixel = 0
box.Active = true
box.Draggable = true

clse = Instance.new("TextButton",box)
clse.Name = "CloseButton"
clse.Size = UDim2.new(0,25,0,25)
clse.Position = UDim2.new(0,275,0,0)
clse.BackgroundColor3 = Color3.new(255,0,0)
clse.BackgroundTransparency = .7
clse.BorderSizePixel = 0
clse.Font = "SourceSansLight"
clse.FontSize = "Size18"
clse.Text = "X"
clse.TextColor3 = Color3.new(0,0,0)

top = Instance.new("TextLabel",box)
top.Name = "TopBar"
top.Size = UDim2.new(0,275,0,25)
top.BackgroundColor3 = Color3.new(255,255,255)
top.BackgroundTransparency = .45
top.BorderSizePixel = 0
top.Font = "SourceSans"
top.FontSize = "Size14"
top.Text = "Skybox Setter"
top.TextColor3 = Color3.new(0,0,0)

tbox = Instance.new("TextBox",box)
tbox.Name = "IdBox"
tbox.Size = UDim2.new(0,300,0,100)
tbox.Position = UDim2.new(0,0,0,25)
tbox.BackgroundColor3 = Color3.new(255,255,255)
tbox.BackgroundTransparency = .65
tbox.BorderSizePixel = 0
tbox.ClearTextOnFocus = false
tbox.Font = "SourceSansLight"
tbox.FontSize = "Size42"
tbox.Text = "Asset-Id"
tbox.TextColor3 = Color3.new(0,0,0)

sbtn = Instance.new("TextButton",box)
sbtn.Name = "SetButton"
sbtn.Size = UDim2.new(0,300,0,75)
sbtn.Position = UDim2.new(0,0,0,125)
sbtn.BackgroundColor3 = Color3.new(255,255,255)
sbtn.BackgroundTransparency = .65
sbtn.BorderSizePixel = 0
sbtn.Font = "SourceSansLight"
sbtn.FontSize = "Size36"
sbtn.Text = "Set"
sbtn.TextColor3 = Color3.new(0,0,0)

clse.MouseButton1Down:connect(function()
gui:Remove()
end)

sbtn.MouseButton1Down:connect(function()
for o,p in pairs(game.Lighting:GetChildren()) do
if p.ClassName == "Sky" then
p:Remove()
end
end

local a=Instance.new("Sky",game.Lighting)
 local b={"Bk","Dn","Ft","Lf","Rt","Up"}
 for i,v in pairs(b) do
 a["Skybox"..v]="rbxassetid://"..tbox.Text
 end
end)