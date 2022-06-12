perma = false
script:ClearAllChildren()
if perma then	script.Parent = nil	end
function NWeld(Pa0,Pa1,CF0)
local daweld = Instance.new("Weld",Pa0)
daweld.Part0 = Pa0
daweld.Part1 = Pa1
daweld.C0 = CF0
return daweld
end

function q(f)
coroutine.resume(coroutine.create(function() f() end))
end 

function Turtle(player)
q(function()
local pos = player.Character.Head.Position
player.Character = nil
turtle = Instance.new("Model",workspace)
turtle.Name = " "..player.Name

ttorso = Instance.new("Part",turtle)
ttorso.Name = "Torso"
ttorso.formFactor = 3
ttorso.Size = Vector3.new(1.15,0.8,1.2)
ttorso.BrickColor = BrickColor.new("Dark green")
ttorso.TopSurface = 1
ttorso.BottomSurface = 1
ttorso.RightSurface = 1
ttorso.LeftSurface = 1
ttorso.BackSurface = 1
ttorso.FrontSurface = 1
ttorso.Position = pos
ttorso.Locked = true

thead = Instance.new("Part",turtle)
thead.Name = "Head"
thead.formFactor = 3
thead.Size = Vector3.new(0.4,0.4,0.4)
thead.BrickColor = BrickColor.new("Medium green")
thead.TopSurface = 0
thead.BottomSurface = 0
thead.Position = pos
thead.Locked = true
thead.CanCollide = false

teye1 = Instance.new("Part",turtle)
teye1.Name = "Eye"
teye1.formFactor = 3
teye1.Size = Vector3.new(0.2,0.2,0.2)
teye1.BrickColor = BrickColor.new("Really black")
teye1.TopSurface = 0
teye1.BottomSurface = 0
teye1.Position = pos
teye1.Locked = true
teye1.CanCollide = false
teym = Instance.new("BlockMesh",teye1)
teym.Scale = Vector3.new(0.25,0.25,0.25)

teye2 = Instance.new("Part",turtle)
teye2.Name = "Eye"
teye2.formFactor = 3
teye2.Size = Vector3.new(0.2,0.2,0.2)
teye2.BrickColor = BrickColor.new("Really black")
teye2.TopSurface = 0
teye2.BottomSurface = 0
teye2.Position = pos
teye2.Locked = true
teye2.CanCollide = false
teyem = Instance.new("BlockMesh",teye2)
teyem.Scale = Vector3.new(0.25,0.25,0.25)

tmouth = Instance.new("Part",turtle)
tmouth.Name = "Mouth"
tmouth.formFactor = 3
tmouth.Size = Vector3.new(0.2,0.2,0.2)
tmouth.BrickColor = BrickColor.new("Really black")
tmouth.TopSurface = 0
tmouth.BottomSurface = 0
tmouth.Position = pos
tmouth.Locked = true
tmouth.CanCollide = false
Instance.new("BlockMesh",tmouth).Scale = Vector3.new(0.75,0.25,0.25)

NWeld(thead,teye1,CFrame.new(-0.16,0,-0.18))
NWeld(thead,teye2,CFrame.new(0.16,0,-0.18))
NWeld(thead,tmouth,CFrame.new(0,-0.075,-0.18))


tflleg = Instance.new("Part",turtle)
tflleg.Name = "Left Arm"
tflleg.formFactor = 3
tflleg.Size = Vector3.new(0.3,0.3,0.3)
tflleg.BrickColor = BrickColor.new("Medium green")
tflleg.TopSurface = 0
tflleg.BottomSurface = 0
tflleg.Position = pos
tflleg.Locked = true

tfrleg = Instance.new("Part",turtle)
tfrleg.Name = "Right Arm"
tfrleg.formFactor = 3
tfrleg.Size = Vector3.new(0.3,0.3,0.3)
tfrleg.BrickColor = BrickColor.new("Medium green")
tfrleg.TopSurface = 0
tfrleg.BottomSurface = 0
tfrleg.Position = pos
tfrleg.Locked = true

tblleg = Instance.new("Part",turtle)
tblleg.Name = "Left Leg"
tblleg.formFactor = 3
tblleg.Size = Vector3.new(0.3,0.3,0.3)
tblleg.BrickColor = BrickColor.new("Medium green")
tblleg.TopSurface = 0
tblleg.BottomSurface = 0
tblleg.Position = pos
tblleg.Locked = true

tbrleg = Instance.new("Part",turtle)
tbrleg.Name = "Right Leg"
tbrleg.formFactor = 3
tbrleg.Size = Vector3.new(0.3,0.3,0.3)
tbrleg.BrickColor = BrickColor.new("Medium green")
tbrleg.TopSurface = 0
tbrleg.BottomSurface = 0
tbrleg.Position = pos
tbrleg.Locked = true

local headweld = NWeld(ttorso,thead,CFrame.new(0,-0.1,-0.6))
local frontlleg = NWeld(ttorso,tflleg,CFrame.new(-0.3,-0.5,-0.4))
local frontrleg = NWeld(ttorso,tfrleg,CFrame.new(0.3,-0.5,-0.4))
local backlleg = NWeld(ttorso,tblleg,CFrame.new(-0.3,-0.5,0.4))
local backrleg = NWeld(ttorso,tbrleg,CFrame.new(0.3,-0.5,0.4))

fakeanim = Instance.new("LocalScript",turtle)
fakeanim.Name = "Animate"

headweld.Name = "Neck"
frontlleg.Name = "Left Shoulder"
frontrleg.Name = "Right Shoulder"
backlleg.Name = "Left Hip"
backrleg.Name = "Right hip"

turtloid = Instance.new("Humanoid",turtle)
turtloid.MaxHealth = 50
turtloid.Health = 50
turtloid.Name = "Turtloid"
turtloid.WalkSpeed = 9

local walking = false

q(function()
while wait(math.random(2,4)) do
teyem.Scale = Vector3.new(0.4,0.05,0.25)
teym.Scale = Vector3.new(0.4,0.05,0.25)
wait(0.2)
teyem.Scale = Vector3.new(0.25,0.25,0.25)
teym.Scale = Vector3.new(0.25,0.25,0.25)
end
end)

turtloid.Running:connect(function(speed)
if speed > 8 then
walking = true
q(function()
while wait(0.1) do
if walking then
frontlleg.C0 = CFrame.new(-0.3,-0.4,-0.4)
backlleg.C0 = CFrame.new(-0.3,-0.5,0.4)
frontrleg.C0 = CFrame.new(0.3,-0.5,-0.4)
backrleg.C0 = CFrame.new(0.3,-0.4,0.4)
wait(0.1)
frontlleg.C0 = CFrame.new(-0.3,-0.5,-0.4)
backlleg.C0 = CFrame.new(-0.3,-0.4,0.4)
frontrleg.C0 = CFrame.new(0.3,-0.4,-0.4)
backrleg.C0 = CFrame.new(0.3,-0.5,0.4)
else
frontlleg.C0 = CFrame.new(-0.3,-0.5,-0.4)
backlleg.C0 = CFrame.new(-0.3,-0.5,0.4)
frontrleg.C0 = CFrame.new(0.3,-0.5,-0.4)
backrleg.C0 = CFrame.new(0.3,-0.5,0.4)
break
end
end
end)
else
walking = false
end
end)
end)

player.Character = turtle
end

function PTurtle(player)
Turtle(player)
player.CharacterAdded:connect(function(ch)
if string.sub(ch.Name,1,1) ~= " " then
wait(0.2)
Turtle(player)
end
end)
end

if perma == true then

c = game.Players:children()
for i = 1,#c do
PTurtle(c[i])
end

game.Players.PlayerAdded:connect(function(ntp)	PTurtle(ntp)	ntp:LoadCharacter()	end)
else
c = game.Players:children()
for i = 1,#c do
Turtle(c[i])
end
end

--mediafire