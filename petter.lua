Owner = Game.Players.acb227 
char = Owner.Character

pet = Instance.new("Part")
pet.Transparency = 0.1
pet.Reflectance = 0
pet.TopSurface = "Smooth"
pet.BottomSurface = "Smooth"
pet.Shape = "Ball"
pet.CanCollide = false
pet.Anchored = true
pet.Size = Vector3.new(2, 2, 2)
pet.BrickColor = BrickColor.new("Bright blue")
mod = Instance.new("Model")
mod.Parent = char
pet.Name = "Head"
hum = Instance.new("Humanoid")
hum.Parent = mod
hum.WalkSpeed = 0
hum.MaxHealth = 0
hum.Health = 0
mod.Name = "Pet"
pet.RightSurface = "Smooth"
pet.LeftSurface = "Smooth"
while true do
pet.Parent = mod
pet.CFrame = char.Torso.CFrame + Vector3.new(0, 5, 0)
wait(0.001)
pet:Remove()
end
