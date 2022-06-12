--[[
			#Lightbringer
			
	 Made from scratch by mr steal yo bork, idea by my friend Pablo, I recommend 
	 reading everything under this comment so you can customize 
	 it to your own likings, enjoy.
	
	v0.8
	- Added "Ascended Strike"
	- Added sprinting particle.
	- Added "Ascended Meteors"
	v0.7
	- You can now ascend to next level :-)
	- Added "Ascended Beam"
	- Made damage random so it's not too op.
	- Fixed small Light Ball bug.
--]]
	MouseAim = false -- false = no mouse aim, true = mouse aim (only works in normal state not in ascended)
	Colors = {"Deep orange", "New Yeller", "Gold", "CGA brown", "Bright red"} -- Deep orange not on anything yet, New yeller is for beam attack and other stuff, Gold is for the orbs and CGA brown is for the Light Ball.
	MusicID  = 753037008 -- change to what u want
	tag = false -- put it to true if you want a "Lightbringer" tag above your head.
	
	--DONT EDIT BELOW--
	busy = false
	floating = false
	ascended = false
	plr = game.Players.LocalPlayer
	char = plr.Character
	repeat wait() until char
	hum = char.Humanoid	
	chatservice = game:GetService("Chat")
	rarm = char["Right Arm"]
	larm = char["Left Arm"]
	lleg = char["Left Leg"]
	rleg = char["Right Leg"]
	torso = char["Torso"]
	head = char["Head"]
	root = char["HumanoidRootPart"]
	Inst = Instance.new
	_G.attacking = false
	Vec = Vector3.new
	Angle = CFrame.Angles
	mouse = plr:GetMouse()
	running = false
	renderstepped = game:service("RunService").RenderStepped
	Attach1 = torso["Right Shoulder"]:Clone()
	Attach2 = torso["Left Shoulder"]:Clone()
	Attach3 = torso["Neck"]:Clone()
	Attach4 = torso["Right Hip"]:Clone()
	Attach5 = torso["Left Hip"]:Clone()
	handhitsound = Inst("Sound")
	handaurasound = Inst("Sound")
	explosionsound = Inst("Sound")
	explosionsound2 = Inst("Sound")
	handarmsound = Inst("Sound")
	chargesound = Inst("Sound")
	beamsound = Inst("Sound")
	beamsound.Parent = torso
	explosionsound.SoundId = "rbxassetid://138186576"
	explosionsound2.SoundId = "rbxassetid://138186576"
	beamsound.SoundId = "rbxassetid://415700134"
	chargesound.SoundId = "rbxassetid://253729308"
	handhitsound.SoundId = "rbxassetid://169380525"
	handaurasound.SoundId = "rbxassetid://154500795"
	handarmsound.SoundId = "rbxassetid://743521497"
	handarmsound.Parent = larm
	handhitsound.Parent = torso
	handaurasound.Parent = rarm
	explosionsound.Parent = head
	explosionsound2.Parent = head
	explosionsound.Volume = 7
	explosionsound2.Volume = 7
	beamsound.Volume = 7
	handaurasound.Volume = 10
	handhitsound.Volume = 5
	chargesound.Volume = 10
	chargesound.Parent = torso
	--functions 
	function Color4(r, g, b)
  		return Color3.new((((r + 1) / 256) - (1 / 256)), (((g + 1) / 256) - (1 / 256)),(((b + 1) / 256) - (1 / 256)))
	end
		
	function dmg(part, dmg)
		part.Touched:connect(function(hit)
			if _G.attacking == true then
		local ehum = hit.Parent:findFirstChild("Humanoid") or hit.Parent.Parent:findFirstChild("Humanoid")
		if ehum and ehum ~= hum then
			if not handhitsound.Playing then
			handhitsound:Play()
			ehum:TakeDamage(dmg)
			tag(dmg,243,14,14,ehum.Parent:FindFirstChild("Head"))
			wait(1)
			ehum.Parent:FindFirstChild("tag"):Destroy()
			handhitsound:Stop()
			_G.attacking = false
			end
		end
		end
		end)
	end

function smooth(Part)
		Part.TopSurface,Part.BottomSurface,Part.LeftSurface,Part.RightSurface,Part.FrontSurface,Part.BackSurface = 10,10,10,10,10,10
end
function tag(string, color1,color2,color3, parent)
local txt = Inst("BillboardGui", parent.Parent)
txt.Adornee = parent
txt.Name = "tag"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Inst("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "SourceSansBold"
text.TextStrokeColor3 = Color3.new(0.25,0.25,0.25)
text.Text = string
text.TextColor3 = Color4(color1,color2,color3)
end

function startepicness()
local epic = Inst("ParticleEmitter",torso)
epic.Texture = "http://www.roblox.com/asset/?id=288978836"
epic.Color = ColorSequence.new(Color4(255,230,0))
epic.Size = NumberSequence.new(1)
epic.Name = "EPICNESS"
epic.LightEmission = 1
epic.Transparency = NumberSequence.new(0.6)
epic.EmissionDirection = "Top"
epic.Acceleration = Vec(0,50,0)
epic.Lifetime = NumberRange.new(0.5)
epic.ZOffset = -1
epic.Rate = 350
epic.Speed =  NumberRange.new(-20)
epic.VelocitySpread = 360
end

function removeepicness()
	torso:FindFirstChild("EPICNESS"):Destroy()
end
function hideepicness()
	torso:FindFirstChild("EPICNESS").Enabled = false
end

function showepicness()
	torso:FindFirstChild("EPICNESS").Enabled = true
end

function createflyingball(partd, pos1,pos2,pos3)
partd = ball:Clone()
partd.BrickColor = BrickColor.new(Colors[5])
if partd:FindFirstChild("BodyPosition") then
	partd:FindFirstChild("BodyPosition"):Destroy()
end
partd.Parent = workspace

partd.Touched:connect(function(part)
if part.Name ~= "specialball" then
explosionsound.TimePosition = 0.4
explosionsound:Play()
Aura1d = Inst("ParticleEmitter",partd)
Aura1d.Texture = "http://www.roblox.com/asset/?id=313951123"
Aura1d.Color = ColorSequence.new(Color4(255, 255, 127))
Aura1d.LightEmission = 1
Aura1d.EmissionDirection = "Top"
Aura1d.Lifetime = NumberRange.new(0.5)
Aura1d.Rate = 200
Aura1d.Rotation = NumberRange.new(-180,180)
Aura1d.Size = NumberSequence.new(5)
Aura1d.Speed =  NumberRange.new(-120,120)
Aura1d.VelocitySpread = 200
Aura1d.ZOffset = 2.5
wait(1)
Aura1d:Destroy()
explosionsound:Stop()
end
end)
local dd = Instance.new("BodyPosition", partd)

dd.Position = head.CFrame:pointToWorldSpace(Vector3.new(pos1,pos2,pos3))
wait(1)
dd:Destroy()
_G.attacking = true
dmg(partd, math.random(50,80))
pos2 = Instance.new("BodyGyro", partd)
pos2.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
pos2.CFrame = CFrame.new(partd.Position, mouse.Hit.p)

bv2 = Instance.new("BodyVelocity")
bv2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
bv2.Velocity = pos2.CFrame.lookVector.unit * 50
bv2.Parent = partd
beamsound:Play()
game.Debris:AddItem(partd, 5)

end

function reloadball()
	for i = 1,10 do wait()
	ball.Size = ball.Size - Vec(0.2,0.2,0.2)
end
for i = 1,5 do wait()
	ball.Size = ball.Size + Vec(0.4,0.4,0.4)
end
end

-- tag and song
if tag == true then
tag("Lightbringer", 255,255,0,head)
end
ex = Inst("Sound", head)
ex.SoundId = "rbxassetid://" .. MusicID
ex.Volume = 1
ex.Looped = true
ex:Play()
--[[
mainpart = Inst("Part", workspace)
mainpart.Transparency = 0
mainpart.Name = "main"
mainpart.CanCollide = false
mainpart.Anchored = false
mainpart.Size = Vec(0.1,0.1,0.1)
mainpart.Position = Vec(-14, 0.5, 1)mainpart = Inst("Part", workspace)
mainpart.Transparency = 0
mainpart.Name = "main"
mainpart.CanCollide = false
mainpart.Anchored = false
mainpart.Size = Vec(0.1,0.1,0.1)

mainweld = Inst("Weld", workspace)
mainweld.Part1 = head
mainweld.Part0 = mainpart
mainweld.C1 = CFrame.new(0, 2.5, 0)
--]]
--gui
local gui = Inst("ScreenGui", plr.PlayerGui)
local frame = Inst("ScrollingFrame")
local TextLabel = Inst("TextLabel")
local line = Inst("Frame")
local handblast = Inst("TextLabel")
local sprint = Inst("TextLabel")
local openandclose = Inst("TextButton")
local ascendedmeteors = Inst("TextLabel")
local sprint = Inst("TextLabel")
local lightball = Inst("TextLabel")
local ascend = Inst("TextLabel")
local whileascended = Inst("TextLabel")
local ascendedbeam = Inst("TextLabel")
local ascendedstrike = Inst("TextLabel")
whileascended.Name = "whileascended"
whileascended.Parent = frame
whileascended.BackgroundColor3 = Color3.new(1, 1, 1)
whileascended.BackgroundTransparency = 1
whileascended.Position = UDim2.new(0, 0, 0, 160)
whileascended.Size = UDim2.new(0, 179, 0, 19)
whileascended.Font = Enum.Font.SourceSans
whileascended.FontSize = Enum.FontSize.Size18
whileascended.Text = "-While Ascended-"
whileascended.TextColor3 = Color3.new(0.333333, 1, 0.498039)
whileascended.TextSize = 18
ascendedbeam.Name = "ascendedbeam"
ascendedbeam.Parent = frame
ascendedbeam.BackgroundColor3 = Color3.new(1, 1, 1)
ascendedbeam.BackgroundTransparency = 1
ascendedbeam.Position = UDim2.new(0, 0, 0, 183)
ascendedbeam.Size = UDim2.new(0, 188, 0, 19)
ascendedbeam.Font = Enum.Font.SourceSans
ascendedbeam.FontSize = Enum.FontSize.Size18
ascendedbeam.Text = "LCLICK - Ascended Beam"
ascendedbeam.TextColor3 = Color3.new(0.921569, 1, 0.184314)
ascendedbeam.TextSize = 18
ascendedstrike.Name = "ascendedstrike"
ascendedstrike.Parent = frame
ascendedstrike.BackgroundColor3 = Color3.new(1, 1, 1)
ascendedstrike.BackgroundTransparency = 1
ascendedstrike.Position = UDim2.new(0, 0, 0, 209)
ascendedstrike.Size = UDim2.new(0, 188, 0, 19)
ascendedstrike.Font = Enum.Font.SourceSans
ascendedstrike.FontSize = Enum.FontSize.Size18
ascendedstrike.Text = "Z - Ascended Strike"
ascendedstrike.TextColor3 = Color3.new(0.921569, 1, 0.184314)
ascendedstrike.TextSize = 18
lightball.Name = "lightball"
lightball.Parent = frame
lightball.BackgroundColor3 = Color3.new(1, 1, 1)
lightball.BackgroundTransparency = 1
lightball.Position = UDim2.new(0, 0, 0, 87)
lightball.Size = UDim2.new(0, 179, 0, 19)
lightball.Font = Enum.Font.SourceSans
lightball.FontSize = Enum.FontSize.Size18
lightball.Text = "X - Light Ball"
lightball.TextColor3 = Color3.new(0.921569, 1, 0.184314)
lightball.TextSize = 18
ascendedmeteors.Name = "ascendedmeteors"
ascendedmeteors.Parent = frame
ascendedmeteors.BackgroundColor3 = Color3.new(1, 1, 1)
ascendedmeteors.BackgroundTransparency = 1
ascendedmeteors.Position = UDim2.new(0, 6, 0, 241)
ascendedmeteors.Size = UDim2.new(0, 188, 0, 19)
ascendedmeteors.Font = Enum.Font.SourceSans
ascendedmeteors.FontSize = Enum.FontSize.Size18
ascendedmeteors.Text = "Z - Ascended Meteors"
ascendedmeteors.TextColor3 = Color3.new(0.921569, 1, 0.184314)
ascendedmeteors.TextSize = 18
ascend.Name = "ascend"
ascend.Parent = frame
ascend.BackgroundColor3 = Color3.new(1, 1, 1)
ascend.BackgroundTransparency = 1
ascend.Position = UDim2.new(0, 0, 0, 114)
ascend.Size = UDim2.new(0, 188, 0, 19)
ascend.Font = Enum.Font.SourceSans
ascend.FontSize = Enum.FontSize.Size18
ascend.Text = "V - Ascend"
ascend.TextColor3 = Color3.new(0.921569, 1, 0.184314)
ascend.TextSize = 18
sprint.Name = "sprint"
sprint.Parent = frame
sprint.BackgroundColor3 = Color3.new(1, 1, 1)
sprint.BackgroundTransparency = 1
sprint.Position = UDim2.new(0, 0, 0, 57)
sprint.Size = UDim2.new(0, 179, 0, 19)
sprint.Font = Enum.Font.SourceSans
sprint.FontSize = Enum.FontSize.Size18
sprint.Text = "SHIFT(hold) - Sprint"
sprint.TextColor3 = Color3.new(0.921569, 1, 0.184314)
sprint.TextSize = 18
openandclose.Name = "open and close"
openandclose.Parent = gui
openandclose.BackgroundColor3 = Color3.new(0.67451, 0.67451, 0.67451)
openandclose.BackgroundTransparency = 0.69999998807907
openandclose.Position = UDim2.new(0, 0, 0, 601)
openandclose.Size = UDim2.new(0, 50, 0, 50)
openandclose.Font = Enum.Font.Code
openandclose.FontSize = Enum.FontSize.Size60
openandclose.Text = ">"
openandclose.TextColor3 = Color3.new(0.0235294, 0.0509804, 0.207843)
openandclose.TextSize = 60
frame.Name = "frame"
frame.Parent = gui
frame.BackgroundColor3 = Color3.new(0.113725, 0.27451, 1)
frame.BackgroundTransparency = 0.30000001192093
frame.BorderColor3 = Color3.new(1, 0.666667, 0)
frame.BorderSizePixel = 4
frame.Position = UDim2.new(0, 0, 0, 423)
frame.Visible = false
frame.Size = UDim2.new(0, 199, 0, 133)
TextLabel.Parent = frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(0, 179, 0, 19)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size18
TextLabel.Text = "Controls for Lightbringer"
TextLabel.TextSize = 18
line.Name = "line"
line.Parent = frame
line.BackgroundColor3 = Color3.new(1, 1, 1)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 0, 21)
line.Size = UDim2.new(0, 183, 0, 1)
handblast.Name = "handblast"
handblast.Parent = frame
handblast.BackgroundColor3 = Color3.new(1, 1, 1)
handblast.BackgroundTransparency = 1
handblast.Position = UDim2.new(0, 0, 0, 29)
handblast.Size = UDim2.new(0, 179, 0, 19)
handblast.Font = Enum.Font.SourceSans
handblast.FontSize = Enum.FontSize.Size18
handblast.Text = "Z - Hand Blast"
handblast.TextColor3 = Color3.new(0.921569, 1, 0.184314)
handblast.TextSize = 18
openandclose.MouseButton1Down:connect(function()
if openandclose.Text == ">" then
frame.Visible = true
openandclose.Text = "<"
else
frame.Visible = false
openandclose.Text = ">"
end
end)
--
mouse.KeyDown:connect(function(key)
if key:lower() == "z" then
	if not busy == true and not ascended then
	--same
	
	busy = true
	Rweld = Inst("Weld", torso)
	Rweld.Part0 = Rweld.Parent
	Rweld.Part1 = char["Right Arm"]
	Lweld = Inst("Weld", torso)
	Lweld.Part0 = Lweld.Parent
	Lweld.Part1 = char["Left Arm"]
	Rweld.C0 = CFrame.new(-1.5,0,0) * Angle(0,0,0)
	Lweld.C0 = CFrame.new(1.5,0,0) * Angle(0,0,0)
	Aura1 = Inst("ParticleEmitter",torso)
	Aura1.Texture = "rbxassetid://305563617"
	Aura1.Color = ColorSequence.new(Color4(255, 170, 0))
	Aura1.LightEmission = 1
	Aura1.EmissionDirection = "Top"
	Aura1.Lifetime = NumberRange.new(0.5)
	Aura1.Rate = 100
	Aura1.Size = NumberSequence.new(3)
	Aura1.Speed =  NumberRange.new(8)
	Aura1.VelocitySpread = 75
	Aura1.ZOffset = -2
	Aura1ef = Inst("ParticleEmitter",rarm)
	Aura1ef.Texture = "http://www.roblox.com/asset/?id=288978836"
	Aura1ef.Color = ColorSequence.new(Color4(255,255,0))
	Aura1ef.LightEmission = 1
	Aura1ef.EmissionDirection = "Top"
	Aura1ef.Lifetime = NumberRange.new(0.5)
	Aura1ef.Rate = 8
	Aura1ef.Speed =  NumberRange.new(-20)
	Aura1ef.VelocitySpread = 20
	Aura1ef2 = Inst("ParticleEmitter",larm)
	Aura1ef2.Texture = "http://www.roblox.com/asset/?id=288978836"
	Aura1ef2.Color = ColorSequence.new(Color4(255,255,0))
	Aura1ef2.LightEmission = 1
	Aura1ef2.EmissionDirection = "Top"
	Aura1ef2.Lifetime = NumberRange.new(0.5)
	Aura1ef2.Rate = 8
	Aura1ef2.Speed =  NumberRange.new(-20)
	Aura1ef2.VelocitySpread = 20
	chatservice:Chat(head, "HAAAAAAAAAAA!", "Red")
	if not handaurasound.Playing then
	handaurasound:Play()
	end
	wait(0.5)
	chatservice:Chat(head, "ROTATE!", "Red")
	for i = 1,41.999 do wait()
		Rweld.C0 = Rweld.C0 * Angle(0.50,0,0)
		Lweld.C0 = Lweld.C0 * Angle(0.50,0,0)	
	end
	chatservice:Chat(head, "CHARGE!", "Blue")
	wait(2)
	chatservice:Chat(head, "SHOOT!", "Green")
		if not handarmsound.Playing then
	handarmsound:Play()
	end
		Aura1ef2.Rate = 50
		Aura1ef.Rate = 50
		_G.attacking = true
		dmg(rarm,math.random(50,80))
		dmg(larm,math.random(50,80))
	--emitter2 = Inst("ParticleEmitter",larm)
	for i = 1,20 do wait()
		Rweld.C0 = Rweld.C0 - Vec(0,0,1.5)
		Lweld.C0 = Lweld.C0 - Vec(0,0,1.5)
	end
	wait(1)
	for i = 1,20 do wait()
		Rweld.C0 = Rweld.C0 + Vec(0,0,1.5)
		Lweld.C0 = Lweld.C0 + Vec(0,0,1.5)
	end
	Aura1.Size = NumberSequence.new(2.5)
	wait(0.5)
	Aura1.Size = NumberSequence.new(2)
	wait(0.5)
	Aura1.Size = NumberSequence.new(1)
	wait(0.5)
	Aura1:Destroy()
	Aura1ef2:Destroy()
	Aura1ef:Destroy()
	for i = 1,41.999 do wait()
		Rweld.C0 = Rweld.C0 * Angle(-0.50,0,0)
		Lweld.C0 = Lweld.C0 * Angle(-0.50,0,0)	
	end
	wait(0.5)
	Attach1.Parent = torso
	Attach2.Parent = torso
	Rweld:Remove()
	Lweld:Remove()
	busy = false
	elseif not busy == true and ascended == true then
busy = true

--hide epicness
hideepicness()

--create balls		

chatservice:Chat(head, "Ascended Strike.", "Red")

wait(1)
reloadball()
createflyingball(_G.ball2, -5,5,0)
reloadball()
createflyingball(_G.ball2, 5,5,0)

showepicness()
busy = false
	end
	end
end)
Aura1d = Inst("ParticleEmitter",rleg)
Aura1d.Texture = "http://www.roblox.com/asset/?id=199456287"
Aura1d.Color = ColorSequence.new(Color4(255, 170, 0))
Aura1d.LightEmission = 1
Aura1d.EmissionDirection = "Top"
Aura1d.Lifetime = NumberRange.new(0.5)
Aura1d.Transparency = NumberSequence.new(0.5)
Aura1d.Rate = 250
Aura1d.Size = NumberSequence.new(0.2)
Aura1d.Speed =  NumberRange.new(0)
Aura1d.Enabled = false
Aura1d.VelocitySpread = 0
Aura1d.ZOffset = 0.5
Aura2d = Inst("ParticleEmitter",lleg)
Aura2d.Texture = "http://www.roblox.com/asset/?id=199456287"
Aura2d.Color = ColorSequence.new(Color4(255, 170, 0))
Aura2d.LightEmission = 1
Aura2d.EmissionDirection = "Top"
Aura2d.Enabled = false
Aura2d.Transparency = NumberSequence.new(0.5)
Aura2d.Lifetime = NumberRange.new(0.5)
Aura2d.Rate = 250
Aura2d.Size = NumberSequence.new(0.2)
Aura2d.Speed =  NumberRange.new(0)
Aura2d.VelocitySpread = 0
Aura2d.ZOffset = 0.5
function onsprintpress(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
        for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (70+(i*2))
			wait()
end
		Aura1d.Enabled = true
		Aura2d.Enabled = true
		hum.WalkSpeed = 20 -- Change To Any Higgher Number To Go Faster
    end
end
function onsprintrelease(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
       hum.WalkSpeed = 16
		for i = 1,5 do
			game.Workspace.CurrentCamera.FieldOfView = (80-(i*2))
			wait()
		end
		Aura2d.Enabled = false
		Aura1d.Enabled = false
    end
end
 
mouse.KeyDown:connect(function(key2)
if key2:lower() == "x" then
if not busy == true and not ascended then
busy = true
Rweld = Inst("Weld", torso)
Rweld.Part0 = Rweld.Parent
Rweld.Part1 = char["Right Arm"]
Lweld = Inst("Weld", torso)
Lweld.Part0 = Lweld.Parent
Lweld.Part1 = char["Left Arm"]
Rweld.C0 = CFrame.new(-1.5,0,0) * Angle(0,0,0)
Lweld.C0 = CFrame.new(1.5,0,0) * Angle(0,0,0)
Aura1 = Inst("ParticleEmitter",torso)
Aura1.Texture = "rbxassetid://305563617"
Aura1.Color = ColorSequence.new(Color4(255, 170, 0))
Aura1.LightEmission = 1
Aura1.EmissionDirection = "Top"
Aura1.Lifetime = NumberRange.new(0.5)
Aura1.Rate = 100
Aura1.Size = NumberSequence.new(3)
Aura1.Speed =  NumberRange.new(8)
Aura1.VelocitySpread = 75
Aura1.ZOffset = -2
chatservice:Chat(head, "Take this!", "Red")

if not handaurasound.Playing then
handaurasound:Play()
end	

_G.attacking = true
-- charge animation
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 * Angle(0.53,0,0)
		Lweld.C0 = Lweld.C0 * Angle(0.53,0,0)	
end
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 + Vec(0,0.20,0)
		Lweld.C0 = Lweld.C0 + Vec(0,0.20,0)	
end
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 - Vec(0,0,0.20)
		Lweld.C0 = Lweld.C0 - Vec(0,0,0.20)	
end
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 * Angle(0,0,0.10)
		Lweld.C0 = Lweld.C0 * Angle(0,0,-0.10)	
end

wait(.5)
chatservice:Chat(head, "CHARGE!", "Blue")
if not chargesound.Playing then
	chargesound:Play()
end
wait(.5)
-- do stuff
beammain = Inst("Part",  workspace)
torso.Anchored = true
beammain.Shape = "Ball"
smooth(beammain)
beammain.CanCollide = false
beammain.BrickColor = BrickColor.new(Colors[2])
beammain.Material = "Neon"
beammain.Anchored = true
beammain.Size = Vec(1,1,1)
beammain.Position = torso.Position
beammain.CFrame = beammain.CFrame - Vec(0, 0.8, 0)
for i = 1,30 do wait()
	beammain.Size = beammain.Size + Vec(0.09,0.09,0.09)
end
beammain.Anchored = false	
local bv = Inst("BodyVelocity")
bv.MaxForce = Vector3.new(1e8,1e8,1e8)
bv.Velocity = head.CFrame.lookVector * 3
bv.Parent = beammain
if MouseAim == true then
chatservice:Chat(head, "Focus, Aim...", "Green")
else
chatservice:Chat(head, "Focus...", "Green")
end
wait(1)
bv:Destroy()
beammain.Anchored = true
wait(0.5)
chargesound:Stop()
if not beamsound.Playing then
	beamsound:Play()
end
chatservice:Chat(head, "LIGHT BALL!", "Green")
dmg(beammain,math.random(300,500))
		--beammain.Touched:connect(function(hit)
		--local ehum = hit.Parent:findFirstChild("Humanoid") or hit.Parent.Parent:findFirstChild("Humanoid")
		--if not ehum then
			--some more weird particle stuff idk might add
		--end		
		--end)
local bv = Inst("BodyVelocity")
beammain.Anchored = false
bv.MaxForce = Vector3.new(1e8,1e8,1e8)
if MouseAim == true then
bv.Velocity = mouse.Hit.lookVector * 50
else
bv.Velocity = torso.CFrame.lookVector * 50
end
bv.Parent = beammain
game.Debris:AddItem(beammain, 10)
torso.Anchored = false
--for i = 1,20 do wait()
	--beammain.Position = beammain.Position - Vec(0,0,0.1)
--end
light1 = Inst("ParticleEmitter", beammain)
light1.Color =  ColorSequence.new(Color4(255, 255, 127))
light1.LightEmission = 1
light1.Size = NumberSequence.new(2)
light1.Texture = "http://www.roblox.com/asset/?id=199456287"
light1.ZOffset = 2.5
light1.LockedToPart = true
light1.EmissionDirection = "Front"
light1.Lifetime = NumberRange.new(0.75)
light1.Speed =  NumberRange.new(15)
light1.Rate = 50
-- back animation
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 * Angle(0,0,-0.10)
		Lweld.C0 = Lweld.C0 * Angle(0,0,0.10)	
end
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 - Vec(0,0,-0.20)
		Lweld.C0 = Lweld.C0 - Vec(0,0,-0.20)	
end
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 + Vec(0,-0.20,0)
		Lweld.C0 = Lweld.C0 + Vec(0,-0.20,0)	
end
for i = 1,3 do wait()
		Rweld.C0 = Rweld.C0 * Angle(-0.53,0,0)
		Lweld.C0 = Lweld.C0 * Angle(-0.53,0,0)	
end
beamsound:Stop()
	--Rweld.C0 = CFrame.new(-1.5,0,0) * Angle(0,0,0)
	--Lweld.C0 = CFrame.new(1.5,0,0) * Angle(0,0,0)
-- remove welds and stuff
Aura1.Size = NumberSequence.new(2.5)
wait(0.5)
Aura1.Size = NumberSequence.new(2)
wait(0.5)
Aura1.Size = NumberSequence.new(1)
wait(0.5)
Aura1:Destroy()
if handaurasound.Playing then
handaurasound:Stop()
end
wait(0.1)
Attach1.Parent = torso
Attach2.Parent = torso
Rweld:Remove()
Lweld:Remove()
busy = false
elseif not busy == true and ascended == true then
busy = true
hideepicness()

--make orbs fly up

chatservice:Chat(head, "Ascended Meteors.", "Red")
reloadball()
createflyingball(balltest1, 10,15,0)
reloadball()
createflyingball(balltest2, 5,15,0)
reloadball()
createflyingball(balltest1, 0,15,0)
reloadball()
createflyingball(balltest1, -5,15,0)
reloadball()
createflyingball(balltest1, -10,15,0)

showepicness()
busy = false	
		end
	end
end)

function createorbs()
_G.orb1 = Inst("Part", char)
_G.orb1.Name = "orb"
_G.orb1.Shape = "Ball"
_G.orb1.Material = "Neon"
_G.orb1.CanCollide = false
_G.orb1.Position = torso.Position + Vec(0,5,0)
_G.orb1.BrickColor = BrickColor.new(Colors[3])
_G.orb1.Transparency = 0.25
_G.orb1.Size = Vector3.new(2, 2, 2)
_G.orb2 = _G.orb1:Clone()
_G.orb2.Parent = char
_G.orb3 = _G.orb2:Clone()
_G.orb3.Parent = char
_G.orb4 = _G.orb3:Clone()
_G.orb4.Parent = char
local bp1 = Inst("BodyPosition", _G.orb1)
local bp2 = Inst("BodyPosition", _G.orb2)
local bp3 = Inst("BodyPosition", _G.orb3)
local bp4 = Inst("BodyPosition", _G.orb4)
game:service'RunService'.RenderStepped:connect(function()
	bp1.Position = head.CFrame:pointToWorldSpace(Vector3.new(4, -1, 0))
	bp2.Position = head.CFrame:pointToWorldSpace(Vector3.new(-4, -1, 0))
	bp3.Position = head.CFrame:pointToWorldSpace(Vector3.new(-0, -1, -4))
	bp4.Position = head.CFrame:pointToWorldSpace(Vector3.new(-0, -1, 4))
end)	
end

function removeorbs()
	for _,orbs in pairs(char:children()) do 
		if orbs:IsA("Part") and orbs.Name == "orb" then
			orbs:Destroy()
		end
	end
end

createorbs()
 
mouse.KeyDown:connect(function(key3)
if key3:lower() == "v" then
if not busy == true and not ascended then
busy = true

--epic shit.
if ex.Playing == true then
ex:Stop()
ex2 = Inst("Sound", head)
ex2.SoundId = "rbxassetid://753037008"
ex2.Volume = 5
ex2.TimePosition = 180
ex2.Looped = true
ex2:Play()
end
--animate
chatservice:Chat(head, "This has gone on for long enough.", "Red")
wait(1)
chatservice:Chat(head, "I'm gonna show you my last form.", "Red")
wait(2)
chatservice:Chat(head, "ASCEND!", "Red")
wait(0.5)
handaurasound:Play()
handaurasound.Looped = true

Aura1 = Inst("ParticleEmitter",torso)
Aura1.Texture = "rbxassetid://305563617"
Aura1.Color = ColorSequence.new(Color4(255, 170, 0))
Aura1.LightEmission = 1
Aura1.EmissionDirection = "Top"
Aura1.Lifetime = NumberRange.new(0.5)
Aura1.Rate = 100
Aura1.Size = NumberSequence.new(3)
Aura1.Speed =  NumberRange.new(8)
Aura1.VelocitySpread = 75
Aura1.ZOffset = -2
Rweld = Inst("Weld", torso)
Rweld.Part0 = Rweld.Parent
Rweld.Part1 = char["Right Arm"]
Lweld = Inst("Weld", torso)
Lweld.Part0 = Lweld.Parent
Lweld.Part1 = char["Left Arm"]
RLweld = Inst("Weld", torso)
RLweld.Part0 = RLweld.Parent
RLweld.Part1 = rleg
LLweld = Inst("Weld", torso)
LLweld.Part0 = LLweld.Parent
LLweld.Part1 = lleg
Hweld = Inst("Weld", torso)
Hweld.Part0 = Hweld.Parent
Hweld.Part1 = head
Rweld.C0 = CFrame.new(-1.5,0,0) * Angle(0,0,0)
Lweld.C0 = CFrame.new(1.5,0,0) * Angle(0,0,0)
RLweld.C0 = CFrame.new(0.5,-2,0) * Angle(0,0,0)
LLweld.C0 = CFrame.new(-0.5,-2,0) * Angle(0,0,0)
Hweld.C0 = CFrame.new(0,1.5,0) * Angle(0,0,0)
for i = 0,1 do wait()
Rweld.C0 = Rweld.C0 * Angle(0,0,-0.03)
Lweld.C0 = Lweld.C0 * Angle(0,0,0.03)
end

--float
local bp = Inst("BodyPosition", root)
bp.Position = root.Position
local ad = root.Position
local huge = math.huge
bp.MaxForce = Vec(huge,huge,huge)
for i = 0, 5, .06 do wait()
bp.Position = Vec(ad.x, ad.y+i, ad.z)
end

--orbs gather

for i = 1,10 do wait()
	_G.orb1.Transparency = _G.orb1.Transparency + 0.1
	_G.orb2.Transparency = _G.orb2.Transparency + 0.1
	_G.orb3.Transparency = _G.orb3.Transparency + 0.1
	_G.orb4.Transparency = _G.orb4.Transparency + 0.1
end
wait(1)
removeorbs()
wait(2)
--make special ball
ball = Inst("Part", workspace)
ball.BrickColor = BrickColor.new(Colors[4])
ball.CanCollide = false
ball.Name = "specialball"
ball.Size = Vec(2.5,2.5,2.5)
ball.Shape = "Ball"
ball.Transparency = 1
ball.Position = torso.Position
ball.Material = "Neon"
ball.Position = torso.Position
local bv = Inst("BodyVelocity")
bv.MaxForce = Vector3.new(1e8,1e8,1e8)
bv.Velocity = head.CFrame.lookVector * 3
bv.Parent = ball
wait(2)
bv:Destroy()
ball.Anchored = true
smooth(ball)

particle = Inst("ParticleEmitter", ball)
particle.Texture = "http://www.roblox.com/asset/?id=199456287"
particle.Color = ColorSequence.new(Color4(255,255,0))
particle.LightEmission = 1
particle.EmissionDirection = "Top"
particle.Color = ColorSequence.new(Color4(255,255,127))
particle.Size = NumberSequence.new(0.1)
particle.Lifetime = NumberRange.new(0.75)
particle.Rate = 250.000
particle.ZOffset = 2.500
particle.Speed =  NumberRange.new(0)
for i = 1,10 do wait()
	ball.Transparency = ball.Transparency - 0.1
end
wait(3)
ball.Anchored = false
local ballbp = Instance.new("BodyPosition", ball)

renderstepped:connect(function()
	ballbp.Position = head.CFrame:pointToWorldSpace(Vector3.new(0, 5, 0))
end)
wait(1)

chatservice:Chat(head, "I am ready.", "Green")
wait(1.5)
-- down we go
asd = true
lleg.Touched:connect(function(hit)
if asd == true then
bp:Destroy()
asd = false
end
end)

if bp then
for i = 0, -5, -.6 do wait()
bp.Position = Vec(ad.x, ad.y+i, ad.z)
end
end

Attach1.Parent = torso
Attach2.Parent = torso
Attach3.Parent = torso
Attach4.Parent = torso
Attach5.Parent = torso
Aura1:Destroy()
Rweld:Remove()
Lweld:Remove()
RLweld:Remove()
LLweld:Remove()	
Hweld:Remove()
startepicness()
--
ascended = true
busy = false
elseif ascended == true and busy == false then
chatservice:Chat(head, "Phew, better turn this off.", "Green")
wait(1)
removeepicness()
for i = 1,10 do wait()
	ball.Transparency = ball.Transparency + 0.1
end
ball:Destroy()
createorbs()
handaurasound:Stop()
handaurasound.Looped = false
ascended = false
		end
	end
end)

mouse.Button1Down:connect(function()
if not busy == true and ascended == true then
busy = true
beamsound:Play()
--reload
reloadball()
--making ball

ballbeam = ball:Clone()
ballbeam.Size = Vec(1.5,1.5,1.5)
ballbeam.CFrame = ball.CFrame
ballbeam.Parent = workspace
_G.attacking = true
dmg(ballbeam, 80)
--make that shit fly
pos = Instance.new("BodyGyro", ballbeam)
pos.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
pos.CFrame = CFrame.new(ballbeam.Position, mouse.Hit.p)
bv = Instance.new("BodyVelocity")
bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
bv.Velocity = pos.CFrame.lookVector.unit * 50
bv.Parent = ballbeam
game.Debris:AddItem(ballbeam, 5)
busy = false
beamsound:Stop()
end
end)

--[[
	TODO : 
	Make the Z attack where it clones the main balls 2 times, shoots both of them and when they hit
	they make a huge explosion.
--]]

game:GetService("UserInputService").InputEnded:connect(onsprintrelease)
game:GetService("UserInputService").InputBegan:connect(onsprintpress)

-->======================END OF SCRIPT======================<--