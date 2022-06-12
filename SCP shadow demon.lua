p = (game.Players.LocalPlayer.Name)
char = game.Players.LocalPlayer.Character


local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

for i,v in pairs(char:GetChildren()) do
   if v.ClassName == 'Hat' then
       v:Destroy()
   end
end

ScarySound1 = Instance.new("Sound")
ScarySound1.Parent = char.Torso
ScarySound1.SoundId = "rbxassetid://177113856"
ScarySound1.Volume = 1

ScarySound2 = Instance.new("Sound")
ScarySound2.Parent = char.Torso
ScarySound2.SoundId = "rbxassetid://234313800"
ScarySound2.Volume = 0.5
ScarySound2.Looped = true

ScarySound3 = Instance.new("Sound")
ScarySound3.Parent = char.Torso
ScarySound3.SoundId = "rbxassetid://254933693"
ScarySound3.Volume = 0.5
ScarySound3.Looped = true

Punch = Instance.new("Sound")
Punch.Parent = char.Torso
Punch.SoundId = "rbxassetid://261566877"
Punch.Volume = 1
Punch.Looped = false

hole = Instance.new("Sound")
hole.Parent = char.Torso
hole.SoundId = "rbxassetid://266364769"
hole.Volume = 1
hole.Looped = false

game.Players.LocalPlayer.Character.Sound:Destroy()

function Normal()
	ScarySound3:Play()
	char.Humanoid.WalkSpeed = 16
char.Head.face.Texture = "rbxassetid://443236276"
char["Left Leg"].Transparency = 0.5
char["Head"].Transparency = 0.5
char["Right Leg"].Transparency = 0.5
char["Torso"].Transparency = 0.5
char["Left Arm"].Transparency = 0.5
char["Right Arm"].Transparency = 0.5
end

function GoInvisible()
	ScarySound3:Stop()
ScarySound1:Stop()
	char.Humanoid.WalkSpeed = 120
	char.Head.face.Transparency = 1
	char["Left Leg"].Transparency = 0.5
char["Head"].Transparency = 0.5
char["Right Leg"].Transparency = 0.5
char["Torso"].Transparency = 0.5
char["Left Arm"].Transparency = 0.5
char["Right Arm"].Transparency = 0.5
wait(0.001)
char["Left Leg"].Transparency = 0.6
char["Head"].Transparency = 0.6
char["Right Leg"].Transparency = 0.6
char["Torso"].Transparency = 0.6
char["Left Arm"].Transparency = 0.6
char["Right Arm"].Transparency = 0.6
wait(0.001)
char["Left Leg"].Transparency = 0.7
char["Head"].Transparency = 0.7
char["Right Leg"].Transparency = 0.7
char["Torso"].Transparency = 0.7
char["Left Arm"].Transparency = 0.7
char["Right Arm"].Transparency = 0.7
wait(0.001)
char["Left Leg"].Transparency = 1
char["Head"].Transparency = 1
char["Right Leg"].Transparency = 1
char["Torso"].Transparency = 1
char["Left Arm"].Transparency = 1
char["Right Arm"].Transparency = 1
end

function GoVisible()
	ScarySound3:Play()
	char.Humanoid.WalkSpeed = 16
	ScarySound1:Play()
	char.Head.face.Transparency = 0
	char["Left Leg"].Transparency = 0.9
char["Head"].Transparency = 0.9
char["Right Leg"].Transparency = 9
char["Torso"].Transparency = 0.9
char["Left Arm"].Transparency = 0.9
char["Right Arm"].Transparency = 0.9
wait(0.001)
char["Left Leg"].Transparency = 0.7
char["Head"].Transparency = 0.7
char["Right Leg"].Transparency = 0.7
char["Torso"].Transparency = 0.7
char["Left Arm"].Transparency = 0.7
char["Right Arm"].Transparency = 0.7
wait(0.001)
char["Left Leg"].Transparency = 0.5
char["Head"].Transparency = 0.5
char["Right Leg"].Transparency = 0.5
char["Torso"].Transparency = 0.5
char["Left Arm"].Transparency = 0.5
char["Right Arm"].Transparency = 0.5

end

Normal()

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://191123156"

mouse.KeyDown:connect(function(key)
	if key == "z" then
		if char.Head.Transparency == 0.5 then
		GoInvisible()
		
		elseif char.Head.Transparency == 1 then
		GoVisible()
	end
end end)

mouse.KeyDown:connect(function(key)
	if key == "x" then
		if ScarySound2.IsPlaying == false then
			ScarySound2:Play()
		elseif ScarySound2.IsPlaying == true then
			ScarySound2:Stop()
			
			
	end
end end)

function onTouch(part)

local humanoid = part.Parent:findFirstChild("Humanoid")
local model = part.Parent
local torso = part.Parent:findFirstChild("Torso")
local head = part.Parent:findFirstChild("Head")
local leftleg = part.Parent:findFirstChild("Left Leg")
local rightleg = part.Parent:findFirstChild("Right Leg")
local leftarm = part.Parent:findFirstChild("Left Arm")
local rightarm = part.Parent:findFirstChild("Right Arm")


if (humanoid ~=nil) then

--humanoid.Health = 0

head.BrickColor = BrickColor.new("Really black")
torso.BrickColor = BrickColor.new("Really black")
leftleg.BrickColor = BrickColor.new("Really black")
rightleg.BrickColor = BrickColor.new("Really black")
rightarm.BrickColor = BrickColor.new("Really black")
leftarm.BrickColor = BrickColor.new("Really black")
humanoid.Sit = true
wait(0.5)
torso.Anchored = true
wait(3)

e=Instance.new('Part', model)
e.Size = Vector3.new(2.25,2.25,2.25)
e.Transparency = 1
e.Anchored = true
e.CFrame = CFrame.new(head.Position)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)
wait(0.1)
head.Mesh.Scale = head.Mesh.Scale + Vector3.new(0.01,0.01,0.01)


wait(2)
head:Destroy()
q=Instance.new('ParticleEmitter', e)
q.Size = NumberSequence.new(0.5)
q.Rate = 50
q.Transparency = NumberSequence.new(0.5)
q.Speed = NumberRange.new(7)
q.VelocitySpread = 100
q.Lifetime = NumberRange.new(1)
q.Texture = 'rbxassetid://122275188'

torso.Anchored = true
rightleg.Anchored = true
leftleg.Anchored = true
rightarm.Anchored = true
leftarm.Anchored = true
ded = Instance.new("Sound")
ded.Parent = torso
ded.SoundId = "rbxassetid://131060226"
ded.Volume = 1
ded.Looped = false
wait()
ded:Play()




end

end 



char.Torso.Touched:connect(onTouch)

mouse.KeyDown:connect(function(key)
	if key == "c" then
		local playAnim = humanoid:LoadAnimation(anim)

			Punch:Play()	
			playAnim:Play()
			
			
			
	end
end)

debounce = false

function onTouched(hit)
hole:Play()
hit.CanCollide=false
wait(.5)
hit.CanCollide = true
debounce = true

end
game.Players.LocalPlayer.Character.Torso.Touched:connect(onTouched)


while wait() do
	char["Left Leg"].BrickColor = BrickColor.new("Really black")
	char["Head"].BrickColor = BrickColor.new("Really black")
	char["Right Leg"].BrickColor = BrickColor.new("Really black")
	char["Torso"].BrickColor = BrickColor.new("Really black")
	char["Left Arm"].BrickColor = BrickColor.new("Really black")
	char["Right Arm"].BrickColor = BrickColor.new("Really black")
end