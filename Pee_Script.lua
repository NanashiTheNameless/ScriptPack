Player = game.Players.LocalPlayer
Character = Player.Character 
Head = Character.Head 
Torso = Character.Torso
function Weld(x,y)
       local W = Instance.new("Weld")
       W.Part0 = x
       W.Part1 = y
       local CJ = CFrame.new(x.Position)
       local C0 = x.CFrame:inverse()*CJ
       local C1 = y.CFrame:inverse()*CJ
       W.C0 = C0
       W.C1 = C1
       W.Parent = x
end
local Breath=Instance.new("Part",Head)
Breath.CFrame=Torso.CFrame*CFrame.new(0,-1,0)
Breath.CanCollide=false
Breath.Transparency=1
Breath.Size=Vector3.new(0.050,0.050,0.050)
Air=Instance.new("ParticleEmitter")
Air.Parent=Breath
Air.EmissionDirection="Front"
Air.Rate=500
Pees=Instance.new("Sound")
Pees.Parent=Torso
Pees.SoundId="rbxassetid://258063615"
Pees.Looped=true
Pees.Volume=0.8
Pees:Play()
Air.Color=ColorSequence.new(Color3.new(255,255,0),Color3.new(255,255,0))
Air.Speed=NumberRange.new(15,15)
Air.Acceleration=Vector3.new(0,-25,0)
Air.Size=NumberSequence.new(0.1,0.1)
Air.Lifetime=NumberRange.new(0.5,0.5)
Air.Transparency=NumberSequence.new(0,0)
Weld(Head,Breath)
while true do
local pee = Instance.new("Part", workspace)
game:GetService("Debris"):AddItem(pee, 10)
pee.CFrame=Torso.CFrame*CFrame.new(0,-2.9,-6)
pee.CanCollide=false
pee.BrickColor=BrickColor.new("New Yeller")
pee.Transparency=0.4
pmesh=Instance.new("SpecialMesh")
pmesh.Parent=pee
pmesh.Scale=Vector3.new(1,0.1,1)
pmesh.MeshType="Sphere"
pee.Anchored=true
pee.Size=Vector3.new(1.5,0.01,1.5)
wait(0.00000000001)
pee.Size=Vector3.new(1.6,0.01,1.6)
wait(0.00000000001)
pee.Size=Vector3.new(1.7,0.01,1.7)
wait(0.00000000001)
pee.Size=Vector3.new(1.9,0.01,1.9)
wait(0.00000000001)
pee.Size=Vector3.new(2,0.01,2)
wait (1/60)
end --made by credit