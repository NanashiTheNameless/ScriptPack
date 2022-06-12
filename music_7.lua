sound = Instance.new("Sound")
sound.Parent = workspace--An outside brick.
sound.Pitch = 1
sound.Volume = 1
local muted = false
local paused = true

if script.Parent.className~="GuiMain" then
na = Instance.new("GuiMain")
na.Parent = game.Players["acb227"].PlayerGui 
ma=Instance.new("TextButton") 
ma.Name="Muter"
ma.BackgroundColor3 = Color3.new(150,150,150) 
ma.BorderColor3 = Color3.new(150,150,150)
ma.Size = UDim2.new(0,50,0,20) 
ma.Position = UDim2.new(0,550,0,-20)
ma.FontSize = "Size8"
ma.Text = "Mute"
ma.Parent= na
ba=Instance.new("TextButton") 
ba.Name="PitchUp"
ba.BackgroundColor3 = Color3.new(150,150,150) 
ba.BorderColor3 = Color3.new(150,150,150)
ba.Size = UDim2.new(0,50,0,20) 
ba.Position = UDim2.new(0,550,0,0)
ba.FontSize = "Size8"
ba.Text = "Pitch Up"
ba.Parent= na
va=Instance.new("TextButton") 
va.Name="PitchDown"
va.BackgroundColor3 = Color3.new(150,150,150) 
va.BorderColor3 = Color3.new(150,150,150)
va.Size = UDim2.new(0,50,0,20) 
va.Position = UDim2.new(0,500,0,0)
va.FontSize = "Size8"
va.Text = "Pitch Down"
va.Parent= na
vs=Instance.new("TextButton") 
vs.Name="Play"
vs.BackgroundColor3 = Color3.new(150,150,150) 
vs.BorderColor3 = Color3.new(150,150,150)
vs.Size = UDim2.new(0,100,0,20) 
vs.Position = UDim2.new(0,500,0,20)
vs.FontSize = "Size8"
vs.Text = "Play"
vs.Parent= na
ca=Instance.new("TextButton") 
ca.Name="Pauser"
ca.BackgroundColor3 = Color3.new(150,150,150) 
ca.BorderColor3 = Color3.new(150,150,150)
ca.Size = UDim2.new(0,50,0,20) 
ca.Position = UDim2.new(0,500,0,-20)
ca.FontSize = "Size8"
ca.Text = "Pause"
ca.Parent= na

xa=Instance.new("TextButton") 
xa.Name="CarmelDansen"
xa.BackgroundColor3 = Color3.new(150,150,150) 
xa.BorderColor3 = Color3.new(150,150,150)
xa.Size = UDim2.new(0,100,0,20) 
xa.Position = UDim2.new(0,0,0,0)
xa.FontSize = "Size8"
xa.Text = "Carmel Dansen"
xa.Parent= na

za=Instance.new("TextButton") 
za.Name="MarioMusic"
za.BackgroundColor3 = Color3.new(150,150,150) 
za.BorderColor3 = Color3.new(150,150,150)
za.Size = UDim2.new(0,100,0,20) 
za.Position = UDim2.new(0,0,0,20)
za.FontSize = "Size8"
za.Text = "Mario Music"
za.Parent= na
la=Instance.new("TextButton") 
la.Name="PLAYNAO"
la.BackgroundColor3 = Color3.new(150,150,150) 
la.BorderColor3 = Color3.new(150,150,150)
la.Size = UDim2.new(0,100,0,20) 
la.Position = UDim2.new(100,0,0,20)
la.FontSize = "Size14"
la.Text = "PLAY"
la.Parent= na
script.Parent=na 
end--START

function Mute()
if muted == true then
ma.Text = "Muted" 
sound.Volume = 0
else
sound.Volume = 1
ma.Text = "Mute"
end end
 
function Pause() 
if paused == true then
ca.Text = "Paused" 
sound:Pause()
else
sound.Volume = 1
ca.Text = "Playing"
end end
 
function CarmDance()
sound.SoundId = "http://www.roblox.com/asset/?id=2303479"
end
 
function ERPlay()
sound:Play()
end
 
function MarioMusic()
sound.SoundId = "http://www.roblox.com/asset/?id=1280470"
end
 
function PitchUp()
sound.Pitch = sound.Pitch + 0.1
end
 
function PitchDown()
sound.Pitch = sound.Pitch - 0.1
end
 
 
 
script.Parent.Pauser.MouseButton1Click:connect(Pause)
script.Parent.CarmelDansen.MouseButton1Click:connect(CarmDance)
script.Parent.MarioMusic.MouseButton1Click:connect(MarioMusic)
script.Parent.PitchUp.MouseButton1Click:connect(PitchUp)
script.Parent.PitchDown.MouseButton1Click:connect(PitchDown)
script.Parent.Muter.MouseButton1Click:connect(Mute)
script.Parent.Play.MouseButton1Click:connect(ERPlay)
 
