
local runDummyScript = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting")) 
mas.Name = "CompiledModel"
o1 = Instance.new("ScreenGui")
o2 = Instance.new("TextBox")
o3 = Instance.new("Script")
o4 = Instance.new("TextBox")
o1.Name = "Changing_GUI"
o1.Parent = mas
o2.Parent = o1
o2.Position = UDim2.new(0.80000001192093,0,0,20)
o2.Size = UDim2.new(0.20000000298023,0,0,25)
o2.Text = ""
o2.Position = UDim2.new(0.80000001192093,0,0,20)
o2.BackgroundColor3 = Color3.new(0, 0, 0)
o2.BackgroundTransparency = 1
o2.BorderColor3 = Color3.new(1, 1, 1)
o2.BorderSizePixel = 0
o2.Font = Enum.Font.Code
o2.FontSize = Enum.FontSize.Size42
o2.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
o2.TextXAlignment = Enum.TextXAlignment.Right
o3.Parent = o2
table.insert(cors,coroutine.create(function()
wait()
runDummyScript(function()
while true do 

script.Parent.Text = "12 AM"
wait(86)

script.Parent.Text = "1 AM"
wait(86)

script.Parent.Text = "2 AM"
wait(86)

script.Parent.Text = "3 AM"
wait(86)

script.Parent.Text = "4 AM"
wait(86)

script.Parent.Text = "5 AM"
wait(86)

script.Parent.Text = "6 AM"
wait(0)

end
end,o3)
end))
o4.Parent = o1
o4.Position = UDim2.new(0.80000001192093,0,0.050000000745058,20)
o4.Size = UDim2.new(0.20000000298023,0,0,25)
o4.Text = "Night XXX"
o4.Position = UDim2.new(0.80000001192093,0,0.050000000745058,20)
o4.BackgroundColor3 = Color3.new(0, 0, 0)
o4.BackgroundTransparency = 1
o4.BorderColor3 = Color3.new(1, 1, 1)
o4.BorderSizePixel = 0
o4.Font = Enum.Font.Code
o4.FontSize = Enum.FontSize.Size18
o4.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
o4.TextWrapped = true
o4.TextXAlignment = Enum.TextXAlignment.Right
mas.Parent = workspace
mas:MakeJoints()
local mas1 = mas:GetChildren()
for i=1,#mas1 do
	mas1[i].Parent = game:GetService("Players").LocalPlayer.PlayerGui 
	ypcall(function() mas1[i]:MakeJoints() end)
end
mas:Destroy()
for i=1,#cors do
coroutine.resume(cors[i])
end
