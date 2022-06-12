--don't espect good songs it not good boombox :3 -YoungWarlock
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "EightiesBoombox"
t1 = Instance.new("Tool", m)
t1.Name = "EightiesBoombox"
t1.TextureId = "http://www.roblox.com/asset/?id=151760104"
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Medium stone grey")
p1.Name = "Handle"
p1.CFrame = CFrame.new(16.8998489, 2.10457039, -2.5804286, 1, 8.24686213e-005, 5.64603688e-005, -8.24906674e-005, 0.99999994, 0.000390607078, -5.64281509e-005, -0.000390611734, 0.99999994)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(4.20000124, 2.22999907, 1.15999937)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=151760030"
b1.TextureId = "http://www.roblox.com/asset/?id=151760072"
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
g1 = Instance.new("SurfaceGui", p1)
o1 = Instance.new("Frame", g1)
o1.BackgroundColor3 = Color3.new(0, 0, 0)
o1.BackgroundTransparency = 1
o1.BorderColor3 = Color3.new(1, 1, 1)
o1.Position = UDim2.new(0.5, 30, 0.40000000596046, 0)
o1.Size = UDim2.new(0, 400, 0, 200)
o1.Visible = false
o2 = Instance.new("ImageLabel", o1)
x1 = Instance.new("Sound", o2)
x1.Name = "Music"
x1.Pitch = 1
x1.SoundId = "http://www.roblox.com/asset/?id=2027611"
x1.Volume = 1
x1.Looped = true
x1.PlayOnRemove = false
s1 = script:clone()
s1.Name = "Script"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRun"
so1.Value = [===[
music = script.Parent
IDs = {"http://www.roblox.com/asset/?id=142295308", "http://www.roblox.com/asset/?id=130776787", "http://www.roblox.com/asset/?id=130776004", "http://www.roblox.com/asset/?id=142716851", "http://www.roblox.com/asset/?id=130872377", "http://www.roblox.com/asset/?id=130987585", "http://www.roblox.com/asset/?id=130798484", "http://www.roblox.com/Asset/?id=4470503", "http://www.roblox.com/asset/?id=142290221", "http://www.roblox.com/asset/?id=4470389", "http://www.roblox.com/asset/?id=130777688", "http://www.roblox.com/asset/?id=142382811", "http://www.roblox.com/asset/?id=142382852", "http://www.roblox.com/asset/?id=130969284", "http://www.roblox.com/asset/?id=142376963", "http://www.roblox.com/asset/?id=1015394", "http://www.roblox.com/asset/?id=2303479", "http://www.roblox.com/asset/?id=1034065"}  
name = {"Raining Tacos", "Don't Drop That Durka Durk", "Everyday I'm Shuffling!", "Queen Killer Queen", "NARWHALS", "Thrift Shop Macklemore", "Opps I Farted", "ROBLOX Theme", "Lorde We're on each others team", "Chrono Trigger Theme", "Drop The Bass", "AC/DC Part1", "AC/DC Part2", "WAKE ME UP", "Green Day-Holiday", "WindsOfFjords", "Caramelldansen", "Halo Theme"}

function one(i)
print(tostring(i))
end

function update(u)
if u == music.Value.Value then
music.Music:Stop()
music.Music.SoundId = IDs[music.Value.Value]
music.TextBox.Text = name[music.Value.Value]
end
end
music.Music.Changed:connect(update)
music.Value.Changed:connect(update)
--[[
if music.Music.IsPlaying == true then
playing = true
else
playing = false
end

if playing == true then
music.Music:Play()
end


--:pause() :Play() :Stop()	
--script.Parent.Name = "Selected: "..l[script.Parent.Parent.Value.Value].." | no# "..script.Parent.Parent.Value.Value
--script.Parent.Parent.Sound.SoundId = p[script.Parent.Parent.Value.Value]

]]

]===]
s1.Parent = o2
v1 = Instance.new("NumberValue", o2)
v1.Name = "Value"
v1.Value = 1
s2 = script:clone()
s2.Name = "LocalScript"
s2.Disabled = true
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRunL"
so2.Value = [===[
music = script.Parent
IDs = {"http://www.roblox.com/asset/?id=1280463", "http://www.roblox.com/asset/?id=2027611", "http://www.roblox.com/asset/?id=1372260", "http://www.roblox.com/asset/?id=1077604", "http://www.roblox.com/asset/?id=1280473", "http://www.roblox.com/asset/?id=1372257", "http://www.roblox.com/asset/?id=1372258", "http://www.roblox.com/Asset/?id=4470503", "http://www.roblox.com/asset/?id=4470544", "http://www.roblox.com/asset/?id=4470389", "http://www.roblox.com/Asset/?id=10242175", "http://www.roblox.com/Asset/?id=10181914", "http://www.roblox.com/Asset/?id=10184119", "http://www.roblox.com/Asset/?id=10184368", "http://www.roblox.com/Asset/?id=10185059", "http://www.roblox.com/Asset/?id=10224650", "http://www.roblox.com/Asset/?id=10224788", "http://www.roblox.com/Asset/?id=10225174", "http://www.roblox.com/asset/?id=1280470", "http://www.roblox.com/Asset/?id=10399717", "http://www.roblox.com/Asset/?id=10399763", "http://www.roblox.com/Asset/?id=10410939", "http://www.roblox.com/asset/?id=1372259", "http://www.roblox.com/asset/?id=1280414", "http://www.roblox.com/asset/?id=1372261", "http://www.roblox.com/asset/?id=1372262", "http://www.roblox.com/asset/?id=1015394", "http://www.roblox.com/asset/?id=2303479", "http://www.roblox.com/asset/?id=1034065"}
name = {"Original Chrono Trigger Theme", "Rickroll", "One Winged Angel", "M.U.L.E", "FFVII Battle AC", "Cursed Abbey", "Choir", "ROBLOX Theme", "MotionFlux", "Chrono Trigger Theme", "Coward Killing Time", "{Runaway}", "Cry", "Broked It", "8-Bit Cave", "The Lost Woods", "Shimmy (DjD)", "Canon in D Major (NG Edit)", "Super Mario 64", "The End Of The World", "Still Alive Orchestral", "Nerezza II (Darkness) 1", "Fire Emblem", "Final Destination", "Pokemon Theme", "Star Fox", "WindsOfFjords", "Caramelldansen", "Halo Theme"}
function update(u)
if u == music.Value.Value then
if music.Music.IsPlaying = true then
playing = true
else
playing = false
end
music.Music:Stop()
music.Music.SoundId = IDs[music.Value.Value]
music.TexBox.Text = name[music.Value.Value]
if playing == true then
music.Music:Play()
end
end
end
--:pause() :Play() :Stop()	
--script.Parent.Name = "Selected: "..l[script.Parent.Parent.Value.Value].." | no# "..script.Parent.Parent.Value.Value
--script.Parent.Parent.Sound.SoundId = p[script.Parent.Parent.Value.Value]
--[[function next()
music.Music:Stop()
v=v+1
if v>29 then
v = 1
end
music.Music.SoundId = p[v]
music.TextBox.Text = name[v]
if p = true then
music.Music:Play()
end
end

music.Next.MouseButton1Down:connect(next)
]]
]===]
s2.Parent = o2
o2.BackgroundColor3 = Color3.new(1, 1, 1)
o2.BackgroundTransparency = 1
o2.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o2.Name = "pic1"
o2.Position = UDim2.new(0.18000002205372, 64, 0.33000001311302, -122)
o2.Size = UDim2.new(0.39000028371811, 100, 0, 120)
o2.Image = "http://www.roblox.com/asset/?id="
o3 = Instance.new("ImageButton", o2)
s3 = script:clone()
s3.Name = "Script"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRun"
so3.Value = [===[
music = script.Parent.Parent
function clicked()
music.Music:Stop()
if music.Value.Value~=18 then
music.Value.Value = music.Value.Value+1
else
music.Value.Value = 1
end
end

script.Parent.MouseButton1Down:connect(clicked)
]===]
s3.Parent = o3
o3.Active = true
o3.BackgroundColor3 = Color3.new(0.917647, 0.913726, 0.92549)
o3.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o3.Name = "Next"
o3.Position = UDim2.new(1, -234, 1, -90)
o3.Size = UDim2.new(0, 20, 0, 22)
o3.Image = "http://www.roblox.com/asset/?id=10139625"
o4 = Instance.new("ImageButton", o2)
s4 = script:clone()
s4.Name = "Script"
s4.Disabled = false
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRun"
so4.Value = [===[
music = script.Parent.Parent
function clicked()
music.Music:Pause()
music.Music:Pause()
music.Music:Pause()
music.Music:Pause()
music.Music:Pause()
end

script.Parent.MouseButton1Down:connect(clicked)
]===]
s4.Parent = o4
o4.Active = true
o4.BackgroundColor3 = Color3.new(0.921569, 0.917647, 0.929412)
o4.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o4.Name = "Pause"
o4.Position = UDim2.new(1, -310, 1, -90)
o4.Size = UDim2.new(0, 20, 0, 22)
o4.Image = "http://www.roblox.com/asset/?id=10139661"
o5 = Instance.new("ImageButton", o2)
s5 = script:clone()
s5.Name = "Script"
s5.Disabled = false
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
music = script.Parent.Parent
function clicked()
music.Music:Play()
music.Music:Play()
music.Music:Play()
music.Music:Play()
music.Music:Play()
end

script.Parent.MouseButton1Down:connect(clicked)
]===]
s5.Parent = o5
o5.Active = true
o5.BackgroundColor3 = Color3.new(0.921569, 0.917647, 0.929412)
o5.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o5.Name = "Play"
o5.Position = UDim2.new(1, -284, 1, -90)
o5.Size = UDim2.new(0, 20, 0, 22)
o5.Image = "http://www.roblox.com/asset/?id=10139679"
o6 = Instance.new("ImageButton", o2)
s6 = script:clone()
s6.Name = "Script"
s6.Disabled = false
so6 = Instance.new("StringValue", s6)
so6.Name = "forCustomRun"
so6.Value = [===[
music = script.Parent.Parent
function clicked()
music.Music:Stop()
if music.Value.Value~=1 then
music.Value.Value = music.Value.Value-1
else
music.Value.Value = 18
end
end

script.Parent.MouseButton1Down:connect(clicked)
]===]
s6.Parent = o6
o6.Active = true
o6.BackgroundColor3 = Color3.new(0.921569, 0.917647, 0.929412)
o6.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o6.Name = "Previous"
o6.Position = UDim2.new(1, -335, 1, -90)
o6.Size = UDim2.new(0, 20, 0, 22)
o6.Image = "http://www.roblox.com/asset/?id=10139687"
o7 = Instance.new("ImageButton", o2)
s7 = script:clone()
s7.Name = "Script"
s7.Disabled = false
so7 = Instance.new("StringValue", s7)
so7.Name = "forCustomRun"
so7.Value = [===[
music = script.Parent.Parent
function clicked()
music.Music:Stop()
music.Music:Stop()
music.Music:Stop()
music.Music:Stop()
music.Music:Stop()
end

script.Parent.MouseButton1Down:connect(clicked)
]===]
s7.Parent = o7
o7.Active = true
o7.BackgroundColor3 = Color3.new(0.921569, 0.917647, 0.929412)
o7.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o7.Name = "Stop"
o7.Position = UDim2.new(1, -259, 1, -90)
o7.Size = UDim2.new(0, 20, 0, 22)
o7.Image = "http://www.roblox.com/asset/?id=10139747"
o8 = Instance.new("TextBox", o2)
o8.Active = true
o8.BackgroundColor3 = Color3.new(0.945098, 0.941177, 0.952941)
o8.BackgroundTransparency = 1
o8.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o8.Position = UDim2.new(1, -641, 1, 79)
o8.Size = UDim2.new(0, 410, 0, 40)
o8.Text = "Rickroll"
o8.TextWrapped = true
o8.TextColor3 = Color3.new(1, 0.333333, 0)
o8.FontSize = Enum.FontSize.Size18
o9 = Instance.new("TextLabel", o2)
o9.BackgroundColor3 = Color3.new(0, 0, 0)
o9.BackgroundTransparency = 1
o9.BorderColor3 = Color3.new(0, 0, 0)
o9.Name = "Notify"
o9.Position = UDim2.new(0, -150, 0, -100)
o9.Size = UDim2.new(0, 410, 0, 30)
o9.Text = "Choose your songs."
o9.TextWrapped = true
o9.TextColor3 = Color3.new(0, 0, 0)
o9.Font = Enum.Font.ArialBold
o9.FontSize = Enum.FontSize.Size48
o9.TextXAlignment = Enum.TextXAlignment.Left
o10 = Instance.new("TextButton", g1)
s8 = script:clone()
s8.Name = "Script"
s8.Disabled = false
so8 = Instance.new("StringValue", s8)
so8.Name = "forCustomRun"
so8.Value = [===[
function onButtonClicked()
script.Parent.Parent.Frame.Visible = false
script.Parent.Parent.Open.Visible = true 
script.Parent.Visible = false
end 

script.Parent.MouseButton1Click:connect(onButtonClicked)
]===]
s8.Parent = o10
o10.Active = true
o10.BackgroundColor3 = Color3.new(0, 0, 0)
o10.BackgroundTransparency = 0.20000000298023
o10.BorderColor3 = Color3.new(0.8, 0.2, 0)
o10.Name = "Close"
o10.Position = UDim2.new(0, 140, 0, 160)
o10.Size = UDim2.new(0, 40, 0, 40)
o10.Visible = false
o10.Style = Enum.ButtonStyle.RobloxButtonDefault
o10.Text = "OFF"
o10.TextColor3 = Color3.new(1, 1, 1)
o10.Font = Enum.Font.ArialBold
o10.FontSize = Enum.FontSize.Size18
o11 = Instance.new("TextButton", g1)
s9 = script:clone()
s9.Name = "Script"
s9.Disabled = false
so9 = Instance.new("StringValue", s9)
so9.Name = "forCustomRun"
so9.Value = [===[
function onButtonClicked()
script.Parent.Parent.Frame.Visible = true
script.Parent.Parent.Close.Visible = true
script.Parent.Visible = false
end 

script.Parent.MouseButton1Click:connect(onButtonClicked)
]===]
s9.Parent = o11
o11.Active = true
o11.BackgroundColor3 = Color3.new(0, 0, 0)
o11.BackgroundTransparency = 0.5
o11.BorderColor3 = Color3.new(1, 1, 1)
o11.Name = "Open"
o11.Position = UDim2.new(0, 140, 0, 160)
o11.Size = UDim2.new(0, 40, 0, 40)
o11.Style = Enum.ButtonStyle.RobloxButtonDefault
o11.Text = "ON"
o11.TextColor3 = Color3.new(1, 1, 1)
o11.Font = Enum.Font.ArialBold
o11.FontSize = Enum.FontSize.Size18
g2 = Instance.new("SurfaceGui", p1)
o12 = Instance.new("TextLabel", g2)
s10 = script:clone()
s10.Name = "Script"
s10.Disabled = false
so10 = Instance.new("StringValue", s10)
so10.Name = "forCustomRun"
so10.Value = [===[
local images = {script.Parent.TextLabel}

while wait() do 
	for _,v in pairs(images) do
		local temp = v.Position.X.Scale
		if (temp <= -v.Size.X.Scale) then
			temp = 1.0
		end
		v.Position = UDim2.new(temp - 0.01, 0, 0.4, 0)
		wait (.01)
	end
end
]===]
s10.Parent = o12
o12.BackgroundColor3 = Color3.new(0.333333, 0.666667, 0)
o12.BackgroundTransparency = 1
o12.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o12.Position = UDim2.new(0, 331, 0, 140)
o12.Size = UDim2.new(0, 150, 0, 120)
o12.ClipsDescendants = true
o12.Text = ""
o12.TextColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o12.Font = Enum.Font.SourceSans
o12.FontSize = Enum.FontSize.Size14
o12.TextYAlignment = Enum.TextYAlignment.Top
o13 = Instance.new("TextLabel", o12)
o13.BackgroundColor3 = Color3.new(1, 1, 1)
o13.BackgroundTransparency = 1
o13.BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843)
o13.Position = UDim2.new(0.97000002861023, 0, 0.40000000596046, 0)
o13.Size = UDim2.new(0, 200, 0, 30)
o13.Text = "The YoungWarlock radio!     :D    ."
o13.TextScaled = true
o13.TextWrapped = true
o13.TextColor3 = Color3.new(1, 0, 0)
o13.Font = Enum.Font.SourceSansBold
o13.FontSize = Enum.FontSize.Size36
o13.TextYAlignment = Enum.TextYAlignment.Top
o14 = Instance.new("TextButton", g2)
o14.Active = true
o14.BackgroundColor3 = Color3.new(0, 0, 0)
o14.BackgroundTransparency = 0.5
o14.BorderColor3 = Color3.new(1, 1, 1)
o14.Name = "Open"
o14.Position = UDim2.new(0, 325, 0, 160)
o14.Size = UDim2.new(0, 160, 0, 80)
o14.Style = Enum.ButtonStyle.RobloxButtonDefault
o14.Text = ""
o14.TextColor3 = Color3.new(1, 1, 1)
o14.Font = Enum.Font.ArialBold
o14.FontSize = Enum.FontSize.Size18
m.Parent = game:service("Workspace")
m:MakeJoints()